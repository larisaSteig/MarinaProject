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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["StudentID"] != null)
            //{
            //    //need to convert the object in session to an int
            //    var id = Convert.ToInt32(Session["StudentID"]);

            //    //get the Authentication object from the manager
            //    var auth = MainManager.FindCustomer(id);

            //    //set the state of the form
            //    if (auth != null)
            //    {
            //        txtFirstName.Text = auth.FirstName;
            //        txtLastName.Text = auth.LastName;
            //        txtCity.Text = auth.City;
            //        txtPhone.Text = auth.Phone;
                    
            //    }
            //}
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