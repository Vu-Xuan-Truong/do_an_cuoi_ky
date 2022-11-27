using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webHD.Models;
using PagedList.Mvc;
using PagedList;


namespace webHD.Controllers
{
    public class TimkiemController : Controller
    {
        // GET: Timkiem
        HatGiongNDEntities db = new HatGiongNDEntities();
        [HttpPost]
        public ActionResult Ketquatimkiem(FormCollection f, int ? page)
        {
            string sTukhoa = f["txtTimKiem"].ToString();
            List<Sanpham> lstKqtk = db.Sanphams.Where(n => n.Tensp.Contains(sTukhoa)).ToList();
            //Phân Trang
            int pageNumber = (page ?? 1);
            int pageSize = 9;


            if (lstKqtk.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm";
                return View(db.Sanphams.OrderBy(n => n.Tensp).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstKqtk.Count + "kết quả!";
            return View(lstKqtk.OrderBy(n => n.Tensp).ToPagedList(pageNumber, pageSize));
        }
        [HttpGet]
        public ActionResult Ketquatimkiem( int? page, string sTuKhoa)
        {
            ViewBag.TuKhoa = sTuKhoa;
            List<Sanpham> lstKqtk = db.Sanphams.Where(n => n.Tensp.Contains(sTuKhoa)).ToList();

            //Phân Trang
            int pageNumber = (page ?? 1);
            int pageSize = 9;


            if (lstKqtk.Count == 0)
            {
                ViewBag.ThongBao = "Không tìm thấy sản phẩm";
                return View(db.Sanphams.OrderBy(n => n.Tensp).ToPagedList(pageNumber, pageSize));
            }
            ViewBag.ThongBao = "Đã tìm thấy " + lstKqtk.Count + "kết quả!";
            return View(lstKqtk.OrderBy(n => n.Tensp).ToPagedList(pageNumber, pageSize));
        }
    }
}