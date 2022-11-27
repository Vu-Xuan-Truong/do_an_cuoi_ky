using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webHD.Models;
using PagedList;
using PagedList.Mvc;

namespace webHD.Controllers
{
    public class SanphamController : Controller
    {
        HatGiongNDEntities db = new HatGiongNDEntities();

        // GET: Sanpham
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Danhmuc(int id, int? page)
        {
            ViewBag.MaDM = id;
            //Tạo biến quy định số sản phẩm trên mỗi trang 
            int iSize = 3;
            //Tạo biến số trang
            int iPageNum = (page ?? 1);
            var sanpham = (from s in db.Sanphams where s.MaDM == id orderby id select s);
            return View(sanpham.ToPagedList(iPageNum, iSize));
        }

        public ActionResult Nhacungcap(int id, int? page)
        {
            ViewBag.MaNCC = id;
            //Tạo biến quy định số sản phẩm trên mỗi trang 
            int iSize = 3;
            //Tạo biến số trang
            int iPageNum = (page ?? 1);
            var sanpham = (from s in db.Sanphams where s.MaNCC == id orderby id select s);
            return View(sanpham.ToPagedList(iPageNum, iSize));
        }

        public ActionResult DanhmucPartial()
        {
            var danhmuc = from MaDM in db.Danhmucsanphams select MaDM;
            return PartialView(danhmuc);
        }

        public ActionResult NhacungcapPartial()
        {
            var NCC = from MaNCC in db.Nhacungcaps select MaNCC;
            return PartialView(NCC);
        }

        public ActionResult caycanhpartial()
        {
            var cc = db.Sanphams.Where(n => n.MaDM == 1).Take(3).ToList();
            return PartialView(cc);
        }
        public ActionResult hatgionghoapartial()
        {
            var hoa = db.Sanphams.Where(n => n.MaDM == 4).Take(3).ToList();
            return PartialView(hoa);
        }
        public ActionResult cayanquapartial()
        {
            var caq = db.Sanphams.Where(n => n.MaDM == 2).Take(3).ToList();
            return PartialView(caq);
        }
        public ActionResult xemchitiet(int id)
        {
            var chitiet = from s in db.Sanphams where s.Masp == id select s;
            return View(chitiet.Single());
        }

    }
}