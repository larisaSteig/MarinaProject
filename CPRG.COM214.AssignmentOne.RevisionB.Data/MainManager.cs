using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace CPRG.COM214.AssignmentOne.RevisionB.Data
{
    public class MainManager
    {
        public static IList<Slip> GetAllSlipsAvailable(int id)
        {
            var db = new MarinaEntities();
            List<Slip> slips = (from slip in db.Slips
                                where (!(from lease in db.Leases select lease.SlipID).Contains(slip.ID) && slip.DockID == id)
                                select slip).ToList();
            return slips;
        }

        public static ICollection<Lease> GetLeaseByCustomerID(int id)
        {
            var db = new MarinaEntities();
            ICollection<Lease> x = (from s in db.Customers 
                     join l in db.Leases on s.ID equals l.CustomerID
                     where l.CustomerID == id
                     select l).ToList();
            return x;
        }
        
        public static Customer Authenticate(string firstName, string lastName)
        {
            var db = new MarinaEntities();
            var auth = db.Customers.SingleOrDefault(a => a.FirstName == firstName && a.LastName == lastName);
            return auth;
        }

        public static Customer FindCustomer(int id)
        {
            var db = new MarinaEntities();
            var auth = db.Customers.SingleOrDefault(a => a.ID == id);
            return auth;
        }

       
        public static void AddCustomer(Customer auth)
        {
            var db = new MarinaEntities();
            db.Customers.Add(auth);
            db.SaveChanges();
        }

        public IList GetAllDocks()
        {
            var db = new MarinaEntities();
            var dock = db.Docks.Select(d => new { ID = d.ID, Name = d.Name, WaterService = d.WaterService, Electrical = d.ElectricalService }).ToList();
            return dock;
        }

        public static Dock FindDock(int id)
        {
            var db = new MarinaEntities();
            var dock = db.Docks.SingleOrDefault(c => c.ID == id);
            return dock;
        }

        public static List<Slip> getAllslipsfromDock(int id)
        {
            var db = new MarinaEntities();
            List<Slip> slips = (from s in db.Slips where s.DockID == id select s).ToList();
            return slips;
        }

        public IList GetAllSlips()
        {
            var db = new MarinaEntities();
            var slip = db.Slips.Select(slp => new { DockID = slp.DockID, SlipId = slp.ID }).ToList();
            return slip;
        }

        public static IList GetAllSlip()
        {
            var db = new MarinaEntities();
            var slip = db.Slips.ToList();
            return slip;
        }

        public static Slip FindSlip(int id)
        {
            var db = new MarinaEntities();
            var slip = db.Slips.SingleOrDefault(c => c.ID == id);
            return slip;
        }
    }

}
