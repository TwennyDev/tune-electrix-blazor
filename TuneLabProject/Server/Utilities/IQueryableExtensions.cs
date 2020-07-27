using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TuneLabProject.Server.Utilities
{
    public static class IQueryableExtensions
    {

        //SS 17/04 This method is an extension i have written for the IQueryable class. It simply returns only the
        //results for a selected page
        public static IQueryable<T> Paginate<T>(this IQueryable<T> queryable, int pageNumber, int quantityPerPage)
        {
            int start = (pageNumber - 1) * quantityPerPage;
            return queryable.Skip(start).Take(quantityPerPage);
        }

    }
}
