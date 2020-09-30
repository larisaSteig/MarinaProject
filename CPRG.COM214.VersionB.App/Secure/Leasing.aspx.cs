using CPRG.COM214.AssignmentOne.RevisionB.Data;
using CPRG.COM214.VersionB.App.Controls;
using System;


namespace CPRG.COM214.VersionB.App
{
    public partial class Leasing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DocksList.DockSelect += DocksList_DockSelect;
           
        }

        private void DocksList_DockSelect(object sender, DockEventArgs e)
        {
            int id = Convert.ToInt32(e.ID);

            if (e.WaterService == true)
            {
                txtWater.Text = "Available";
            }
            else
            {
                txtWater.Text = "Not Available";
            }
            if (e.ElectricalService == true)
            {
                txtElectrical.Text = "Available";
            }
            else
            {
                txtElectrical.Text = "Not Available";
            }
        
            dropDownSlips.DataSource = MainManager.GetAllSlipsAvailable(id);
            dropDownSlips.DataTextField = "ID";
            dropDownSlips.DataValueField = "ID";
            dropDownSlips.DataBind();
            dropDownSlips.SelectedIndex = 0;
    
        }

        protected void dropDownSlips_SelectedIndexChanged(object sender, EventArgs e)
        {

            var id = Convert.ToInt32(dropDownSlips.SelectedValue);

            var slips = MainManager.FindSlip(id);

            uxSlipID.Text = slips.ID.ToString();
            uxWidth.Text = slips.Width.ToString();
            uxLength.Text = slips.Length.ToString();
        }

        protected void btnLease_Click(object sender, EventArgs e)
        {
            int customerID = Convert.ToInt32(Session["CustomerID"]);
            int slipID = Convert.ToInt32(dropDownSlips.SelectedValue);

           
            var db = new MarinaEntities();
            var auth = new Lease { SlipID = slipID, CustomerID = customerID};
            db.Leases.Add(auth);
            db.SaveChanges();

            gridViewLease.DataSource = MainManager.GetLeaseByCustomerID(customerID);
            gridViewLease.DataBind();
        }
    }
}