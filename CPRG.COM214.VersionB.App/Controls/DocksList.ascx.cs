using CPRG.COM214.AssignmentOne.RevisionB.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CPRG.COM214.VersionB.App.Controls
{
    public partial class DocksList : System.Web.UI.UserControl
    {
        public event DockSelector DockSelect;

        public Dock Dock { get; set; }
        // Bolean property to set AutoPostBack
        public bool AllowPostBack
        {
            get { return uxDockList.AutoPostBack; }
            set { uxDockList.AutoPostBack = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var db = new MainManager();
                uxDockList.DataSource = db.GetAllDocks();
                uxDockList.DataTextField = "Name";
                uxDockList.DataValueField = "ID";
                uxDockList.DataBind();
                uxDockList.SelectedIndex = 0;
                uxDockList_SelectedIndexChanged(this, e);
            }
           

        }

        protected void uxDockList_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DockSelect != null)
            {
                var id = Convert.ToInt32(uxDockList.SelectedValue);

                Dock dk = MainManager.FindDock(id);

                // adds the course object to the public property for outside access
                Dock = dk;

                var args = new DockEventArgs
                {
                    ID = dk.ID,
                    Name = dk.Name,
                   
                    WaterService = dk.WaterService,
                                        
                    ElectricalService = dk.ElectricalService

                };
                DockSelect.Invoke(this, args);
            }

        }

        //protected void uxDockList_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    if(DockSelect != null)
        //    {
        //        var id = Convert.ToInt32(uxDockList.SelectedValue);
        //        DockSelect.Invoke(this, id);
        //    }
        //}
    }
}