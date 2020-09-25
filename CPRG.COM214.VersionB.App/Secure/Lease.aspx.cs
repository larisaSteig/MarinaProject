using CPRG.COM214.AssignmentOne.RevisionB.Data;
using CPRG.COM214.VersionB.App.Controls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPRG.COM214.VersionB.App.Secure
{
    public partial class Lease : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // DocksList1.DockSelect += DocksList1_DockSelect;
            DocksList.DockSelect += DocksList_DockSelect;

            var crs =(Customer) Session["CustomerID"];
           
        }


        private void DocksList_DockSelect(object sender, Controls.DockEventArgs e)
        {
            int id = Convert.ToInt32(e.ID);
            //var id = Convert.ToInt32(Session["StudentID"]);
            //Label1.Text = id.ToString()
            dropDownSlips.DataSource = MainManager.GetAllSlipsAvailable(id);
            dropDownSlips.DataTextField = "ID";
            dropDownSlips.DataValueField = "ID";
            dropDownSlips.DataBind();
            dropDownSlips.SelectedIndex = 0;
            // case sender to dockList
            //var user = (DocksList)sender;
            //Session["Dock"] = user.Dock;


        }

        //protected void btnLease_Click(object sender, EventArgs e)
        //{
        //   var auth = new Lease { SlipID = dropDownSlips.SelectedValue, CustomerID = Convert.ToInt32(Session["StudentID"]) }

        //   var slip = new Slip {  }
        //}

        protected void dropDownSlips_SelectedIndexChanged(object sender, EventArgs e)
        {

            
           var id = Convert.ToInt32(dropDownSlips.SelectedValue);
           
           var slips = MainManager.FindSlip(id);

            uxSlipID.Text = slips.ID.ToString();
            uxWidth.Text = slips.Width.ToString();
            uxLength.Text = slips.Length.ToString();

          


        }
    }
}