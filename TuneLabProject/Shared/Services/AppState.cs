using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TuneLabProject.Shared.Services
{
    public class AppState
    {
        //SS 27/3 Delegate for holding the update method belonging to the ShoppingCartLink component.
        //Added some extra logic in the setter to ensure it can only be added to once.
        private Func<Task> onCartQuantityChange;
        public event Func<Task> OnCartQuantityChange
        {
            add
            {
                if(onCartQuantityChange == null || !onCartQuantityChange.GetInvocationList().Contains(value))
                {
                    onCartQuantityChange += value;
                }
            }
            remove
            {
                onCartQuantityChange -= value;
            }
        }

        //SS 27/3 Public method to invoke the delegate if it is not null
        public void CartHasChanged()
        {
            onCartQuantityChange?.Invoke();
        }

    }
}
