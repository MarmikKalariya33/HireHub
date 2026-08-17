using System;
using System.Web.Routing;

namespace Job_Portal
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(RouteTable.Routes);
        }

        private static void RegisterRoutes(RouteCollection routes)
        {
            routes.MapPageRoute(
                "Dashboard",
                "Dashboard",
                "~/Dashboard.aspx"
            );
        }
    }
}