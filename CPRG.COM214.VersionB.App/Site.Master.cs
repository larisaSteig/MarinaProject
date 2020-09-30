using System;
using System.Web.Security;
using System.Web.UI;


namespace CPRG.COM214.VersionB.App
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Context.User.Identity.IsAuthenticated)
            {
                uxWelcome.InnerText = $"Welcome {Context.User.Identity.Name}";
                uxLogin.InnerHtml = "<span class='fa fa-sign-out-alt'>";
            }
            else
            {
                uxWelcome.InnerText = string.Empty;
                uxLogin.InnerHtml = "<span class='fa fa-sign-in-alt'>";
            }
        }

 
        protected void HandleLoginClick(object sender, EventArgs e)
        {
            //check if Context.User.Identity.IsAuthenticated (signout auth ticket, clear session, redirect)
            if (Context.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.SignOut(); // removes forms authentication ticket from the browser
                Session.Clear();
                Response.Redirect("~/");
            }
            else
            {
                Response.Redirect("~/Login");
            }
        
        }
    }
}