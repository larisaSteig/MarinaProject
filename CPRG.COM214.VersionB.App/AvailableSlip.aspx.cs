using CPRG.COM214.AssignmentOne.RevisionB.Data;
using System;

namespace CPRG.COM214.VersionB.App
{
    public partial class AvailableSlip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                DocksList.DockSelect += DocksList_DockSelect;
        }

        private void DocksList_DockSelect(object sender, Controls.DockEventArgs e)
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
           
            GridView1.DataSource = MainManager.GetAllSlipsAvailable(id);
            GridView1.DataBind();
        }

    }
}