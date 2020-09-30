using CPRG.COM214.AssignmentOne.RevisionB.Data;
using System;
using System.Web.Security;


namespace CPRG.COM214.VersionB.App
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            var db = new MarinaEntities();

            var user = MainManager.Authenticate(txtFirstName.Text, txtLastName.Text);

            if (user == null)
            {
                var auth = new Customer
                {
                    FirstName = txtFirstName.Text,
                    LastName = txtLastName.Text,
                    City = txtCity.Text,
                    Phone = txtPhone.Text

                };
                 db.Customers.Add(auth);
            }

            
            db.SaveChanges();
            FormsAuthentication.SignOut();
            Response.Redirect("~/Login");

        }
    }
}