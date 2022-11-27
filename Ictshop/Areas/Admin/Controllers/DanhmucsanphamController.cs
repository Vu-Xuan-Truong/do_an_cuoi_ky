using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using webHD.Models;

namespace webHD.Areas.Admin.Controllers
{
    public class DanhmucsanphamController : Controller
    {
        private HatGiongNDEntities db = new HatGiongNDEntities();

        // GET: Admin/Hedieuhanhs
        public ActionResult Index()
        {
            return View(db.Danhmucsanphams.ToList());
        }

        // GET: Admin/Hedieuhanhs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Danhmucsanpham hedieuhanh = db.Danhmucsanphams.Find(id);
            if (hedieuhanh == null)
            {
                return HttpNotFound();
            }
            return View(hedieuhanh);
        }

        // GET: Admin/Hedieuhanhs/Create
        [HttpGet]
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Hedieuhanhs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaDM,TenDM")] Danhmucsanpham danhmucsanpham)
        {
            if (ModelState.IsValid)
            {
                db.Danhmucsanphams.Add(danhmucsanpham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(danhmucsanpham);
        }

        // GET: Admin/Hedieuhanhs/Edit/5
        [HttpGet]
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Danhmucsanpham danhmucsanpham = db.Danhmucsanphams.Find(id);
            if (danhmucsanpham == null)
            {
                return HttpNotFound();
            }
            return View(danhmucsanpham);
        }

        // POST: Admin/Hedieuhanhs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaDM,TenDM")] Danhmucsanpham danhmucsanpham)
        {
            if (ModelState.IsValid)
            {
                db.Entry(danhmucsanpham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(danhmucsanpham);
        }

        // GET: Admin/Hedieuhanhs/Delete/5
        [HttpGet]
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Danhmucsanpham danhmucsanpham = db.Danhmucsanphams.Find(id);
            if (danhmucsanpham == null)
            {
                return HttpNotFound();
            }
            return View(danhmucsanpham);
        }

        // POST: Admin/Hedieuhanhs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Danhmucsanpham danhmucsanpham = db.Danhmucsanphams.Find(id);
            db.Danhmucsanphams.Remove(danhmucsanpham);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
