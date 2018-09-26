using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace WorkRequest
{
	public class RouteConfig
	{
		public static void RegisterRoutes(RouteCollection routes)
		{
			routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

			routes.MapRoute(
				name: "Default",
				url: "{controller}/{action}/{id}",
				defaults: new
                {
                    controller = "Home",
                    action = "Index",
                    id = UrlParameter.Optional
                }
			);

            routes.MapRoute(
            name: "AdminRequests",
            url: "{controller}/{action}/{id}",
            defaults: new
            {
                controller = "AdminRequests",
                action = "Index",
                id = UrlParameter.Optional
            }
        );
            routes.MapRoute(
            name: "EmployeeRequests",
            url: "{controller}/{action}/{id}",
            defaults: new
            {
                controller = "EmployeeRequests",
                action = "Index",
                id = UrlParameter.Optional
            }
        );
        }
	}
}
