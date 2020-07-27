var powerChart;
var torqueChart;

//SS 22/3 Function for creating and updating power and torque donut charts
function updateCanvas(powerCanvas, powerValue, torqueCanvas, torqueValue, power, torque) {

    //Colours for charts/text
    let powerColour = "#17a2b8";
    let torqueColour = "#f26a21";

    //If power donut chart already exists then destroy first before creating a new one
    if (powerChart != null) {
        powerChart.destroy();
    }

    //Create a chart displaying the gain in HP for the selected vehicle
    powerChart = new Chart(powerCanvas, {
        type: 'doughnut', // Set the chart to be a donut style chart
        data: {
            datasets: [
                {
                    data: [power, 100 - power], // Set the value shown in the chart as a percentage (out of 100)
                    backgroundColor: [powerColour], // The background color of the filled chart
                    borderWidth: 0 // Width of border around the chart
                }
            ]
        },
        options: {
            cutoutPercentage: 84, // The percentage of the middle cut out of the chart
            responsive: false, // Set the chart to not be responsive
            tooltips: {
                enabled: false // Hide tooltips
            }
        }
    });

    //Set the text within the power donut chart
    powerValue.innerHTML = "+" + power + "%";
    powerValue.style.color = powerColour;

    //If torque donut chart already exists then destroy first before creating a new one
    if (torqueChart != null) {
        torqueChart.destroy();
    }

    //Create a chart displaying the gain in NM for the selected vehicle
    torqueChart = new Chart(torqueCanvas, {
        type: 'doughnut', // Set the chart to be a donut style chart
        data: {
            datasets: [
                {
                    data: [torque, 100 - torque], // Set the value shown in the chart as a percentage (out of 100)
                    backgroundColor: [torqueColour], // The background color of the filled chart
                    borderWidth: 0 // Width of border around the chart
                }
            ]
        },
        options: {
            cutoutPercentage: 84, // The percentage of the middle cut out of the chart
            responsive: false, // Set the chart to not be responsive
            tooltips: {
                enabled: false // Hide tooltips
            }
        }
    });

    //Set the text within the torque donut chart
    torqueValue.innerHTML = "+" + torque + "%";
    torqueValue.style.color = torqueColour;

    //Set the animation time for the charts
    Chart.defaults.global.animation.duration = 1400;    


}