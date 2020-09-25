using CPRG.COM214.AssignmentOne.RevisionB.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPRG.COM214.VersionB.App
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var customer = MainManager.Authenticate(txtFirstName.Text, txtLastName.Text);
            if (customer == null)
            {
                txtFirstName.Text = string.Empty;
                txtLastName.Text = string.Empty;
                txtFirstName.Focus();
                return;
            }
            //Session.Add("Customer", customer);
            Session.Add("CustomerID", customer.ID);
            FormsAuthentication.RedirectFromLoginPage($"{customer.FirstName} {customer.LastName}", false);
        }
    }
}