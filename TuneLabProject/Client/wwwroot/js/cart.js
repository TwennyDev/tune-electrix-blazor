const COOKIE_NAME = "cart";

//SS 02/04 Function for retrieving data from the cookie with the given key
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1);
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length);
        }
    }
    return "";
}

//SS 02/04 function to set cookie data
function setCookie(cname, data) {

    document.cookie = cname + "=" + data;

}

//SS 02/04 Function to retrieve the total number of unique products in the cart
function getNumberOfItems() {

    //Get cart data from cookie
    let cookie = getCookie(COOKIE_NAME);

    //If cookie data is empty return 0, otherwise parse the cookie data into an array and return the length
    if (cookie == "") {

        return 0;

    } else {

        let cartItems = JSON.parse(cookie);

        return cartItems.length;

    }

}

//SS 02/04 Function to retrieve the quantity of a specific product in the cart
function getProductQuantity(productId) {

    //If cart is empty return 0
    if (getNumberOfItems() == 0) {
        return 0;
    }

    //Get cookie data
    let cookie = getCookie(COOKIE_NAME);

    //Parse cookie data back into an array of objects
    let cartItems = JSON.parse(cookie);

    //Loop through all objects and return the quanity if the product exists in the cart
    for (let i = 0; i < cartItems.length; i++) {

        if (cartItems[i]["ProductId"] == productId) {
            return cartItems[i]["Quantity"];
        }

    }

    //Return 0 if no product was found
    return 0;

}

//SS 02/04 Function to add a product to the cart
function addToCart(productId, quantity) {

    let cartItems;

    //Get cookie data
    let cookie = getCookie(COOKIE_NAME);

    //If cookie data is empty, create a new array, otherwise parse the existing data
    if (cookie == "") {

        cartItems = [];

    } else {

        cartItems = JSON.parse(cookie);

    }

    //Create a new object and add the product id and data
    let cartItem = new Object();
    cartItem["ProductId"] = productId;
    cartItem["Quantity"] = quantity;

    //Add object to the array
    cartItems.push(cartItem);

    //Serialize the array into a string
    let data = JSON.stringify(cartItems);

    //Set the cookie
    setCookie(COOKIE_NAME, data);

    //Return the serialized cart data
    return data;

}

//SS 02/04 Function for changing the quantity of a product
function changeItemQuantity(id, quantity) {

    let cartItems;

    //Get the cart data from cookie
    let cookie = getCookie(COOKIE_NAME);

    if (cookie == "") {

        cartItems = [];

    } else {

        //Parse cookie data back into an array of objects
        cartItems = JSON.parse(cookie);

        //Loop through the array, find the selected object and update its quantity
        for (let i = 0; i < cartItems.length; i++) {

            if (cartItems[i]["ProductId"] == id) {
                cartItems[i]["Quantity"] = quantity;
                break;
            }

        }

    }

    //Reserialize the array of objects
    let data = JSON.stringify(cartItems);

    //Reset the cookie data
    setCookie(COOKIE_NAME, data);

    //Return the serialized cart data
    return data;
}

//SS 02/04 Function to remove a product from the cart
function removeFromCart(id) {

    let cartItems;

    //Get the cookie data
    let cookie = getCookie(COOKIE_NAME);

    if (cookie == "") {

        cartItems = [];

    } else {

        //Parse the cookie data
        cartItems = JSON.parse(cookie);

        //Loop through and remove the product selected
        for (let i = cartItems.length - 1; i >= 0; i--) {

            if (cartItems[i]["ProductId"] == id) {
                cartItems.splice(i, 1);
                break;
            }

        }

    }

    //Reserialize the data
    let data = JSON.stringify(cartItems);

    //Reset the cookie
    setCookie(COOKIE_NAME, data);

    //Return the serialized cart data
    return data;
}

//SS 02/04 Function for clearing the cart cookie
function clearCartCookie() {

    let cookie = getCookie(COOKIE_NAME);

    if (cookie != "") {

        setCookie(COOKIE_NAME, "");

    }

}

//SS 02/04 Function to retrieve the serialized data from the cart cookie
function getCartJson() {

    let data = getCookie(COOKIE_NAME);

    return data;
}

//SS 02/04 Function to set the serialized data in the cart cookie
function setCartJson(data) {

    setCookie(COOKIE_NAME, data);

}

//SS 02/04 Function to check if a product exists in the cart
function containsProduct(id) {

    let n = getNumberOfItems();

    if (n == 0) {
        return false;
    }

    let cookie = getCookie(COOKIE_NAME);

    let cartItems = JSON.parse(cookie);

    for (let i = 0; i < cartItems.length; i++) {

        if (cartItems[i]["ProductId"] == id) {
            return true;
        }

    }

    return false;

}

//SS 06/04 Method to setup and render the paypal button on the cart page
function initPaypal(buttonDiv, productsJson, subTotal, gst, dotNetInstance) {

    //Clear the div first, this prevents multiple buttons being rendered if the buttons need to be re-rendered
    document.getElementById(buttonDiv).innerHTML = "";

    //Parse the list of cart products
    let products = JSON.parse(productsJson);

    //Initialise an empty array
    let orderItems = [];

    //Loop through products and create paypal line items
    for (let i = 0; i < products.length; i++) {

        let product = products[i];

        orderItems.push({

            name: product["Product"]["ProductName"],
            unit_amount: {
                currency_code: "NZD",
                value: product["Product"]["CurrentPrice"]
            },
            quantity: product["Quantity"],
            category: "PHYSICAL_GOODS"

        });

    }

    //Create and render paypal button
    paypal.Buttons({

        //This callback creates the order and is invoked when the user clicks the paypal button
        createOrder: function (data, actions) {

            return actions.order.create({

                purchase_units: [
                    {
                        amount: {
                            currency_code: "NZD",
                            value: subTotal + gst,
                            breakdown: {

                                item_total: {
                                    currency_code: "NZD",
                                    value: subTotal
                                },
                                tax_total: {
                                    currency_code: "NZD",
                                    value: gst
                                }

                            }                            
                        },
                        items: orderItems,
                        description: "TuneLab Order"
                    }
                ]

            });
        },

        //This callback starts the loading spinner, captures the payment and invokes the C# callback,
        //It is invoked if and when the payment is approved
        onApprove: function (data, actions) {

            showLoadSpinner(true);

            return actions.order.capture().then(function (details) {   

                //Get the shipping details from the transaction
                let buyerStreet = details.purchase_units[0].shipping.address.address_line_1;
                let buyerCity = details.purchase_units[0].shipping.address.admin_area_2;
                let postcode = details.purchase_units[0].shipping.address.postal_code;
                let buyerName = details.purchase_units[0].shipping.name.full_name;                

                //Invoke C# callback in ShoppingCart component, passing in the transaction id
                dotNetInstance.invokeMethodAsync("CreateInvoice", details.id, buyerName, buyerStreet, buyerCity, postcode);

            });
        }

    }).render("#" + buttonDiv);

}

//SS 06/04 Function to show/hide the modal loading spinner
function showLoadSpinner(show) {

    document.getElementById("loadSpinner").style.display = show ? "block" : "none";

    if (!show) {
        document.getElementById("transId").innerHTML = "";
        document.getElementById("popupHeader").innerHTML = "";
        document.getElementById("popupMessage").innerHTML = "";
        document.getElementById("modalPopup").classList.add("closed-sam");
    }

}

//SS 06/04 Function to show success/error popup
function showConfirmDialog(transId, error, message) {

    document.getElementById("popupImg").src = error ? "img/redcross.png" : "img/greencheck.png";
    document.getElementById("popupHeader").innerHTML = error ? "Error!" : "Payment Success!";
    document.getElementById("popupMessage").innerHTML = message;

    document.getElementById("transId").innerHTML = transId;
    document.getElementById("modalPopup").classList.remove("closed-sam");
}