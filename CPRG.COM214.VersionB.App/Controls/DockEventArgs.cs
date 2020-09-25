using CPRG.COM214.AssignmentOne.RevisionB.Data;
using System;
using System.Collections.Generic;

namespace CPRG.COM214.VersionB.App.Controls
{
    public class DockEventArgs: EventArgs
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public bool WaterService { get; set; }
        public bool ElectricalService { get; set; }
    }
}