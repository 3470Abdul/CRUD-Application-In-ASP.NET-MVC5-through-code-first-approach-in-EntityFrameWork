using CodeFirstApproach.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CodeFirstApproach.Controllers
{
    public class HomeController : Controller
    {
        EmployeeContext db = new EmployeeContext();
        public ActionResult Index()
        {
            var data = db.Employees.ToList();
            return View(data);
        }

        public ActionResult Create()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Create(Employee e)
        {
            db.Employees.Add(e);
            int a = db.SaveChanges();
            if(a > 0)
            {
                TempData["Message"] = "Data Inserted Successfully";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "Data Not Inserted";
                return RedirectToAction("Index");
            }
        }
        public ActionResult Edit(int id)
        {
            var data = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            return View(data);
        }
        [HttpPost]
        public ActionResult Edit(Employee e)
        {
            db.Entry(e).State = EntityState.Modified;
            int a = db.SaveChanges();
            if(a > 0)
            {
                TempData["Message"] = "Data Updated Successfully.";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "Data Not Updated.";
                return RedirectToAction("Index");
            }
        }
        public ActionResult Details(int id)
        {
            var row = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            return View(row);
        }

        public ActionResult Delete(int id)
        {
            var row = db.Employees.Where(x => x.Id == id).FirstOrDefault();
            return View(row);
        }
        [HttpPost]
        public ActionResult Delete(Employee e)
        {
            db.Entry(e).State = EntityState.Deleted;
            int a = db.SaveChanges();
            if(a > 0)
            {
                TempData["Message"] = "Data Deleted Successfully.";
                return RedirectToAction("Index");
            }
            else
            {
                TempData["Message"] = "Data not Deleted";
                return RedirectToAction("Index");
            }
            
        }
        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}