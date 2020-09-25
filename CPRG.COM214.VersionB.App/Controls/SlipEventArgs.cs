using CPRG.COM214.AssignmentOne.RevisionB.Data;
using System;
using System.Collections.Generic;

namespace CPRG.COM214.VersionB.App.Controls
{
    public class SlipEventArgs: EventArgs

    {
        public int ID { get; set; }
        public int Width { get; set; }
        public int Length { get; set; }
        public int DockID { get; set; }
        public Dock Dock { get; set; }
        public IList<Lease> Leases { get; set; }
    }
}