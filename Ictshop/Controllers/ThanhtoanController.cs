
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webHD.Models;

namespace WebBanHatGiong.Controllers
{
    public class ThanhtoanController : Controller
    {
        HatGiongNDEntities db = new HatGiongNDEntities();
        // GET: Thanhtoan
        public ActionResult Thanhtoan()
        {
            if (Session["use"] == null)
            {
                return RedirectToAction("Index", "Home");
            }
            else
            {
                //lấy thông tin từ giỏ hàng từ biến Session
                var lstcart = (List<GioHang>)Session["Thanhtien"];
                // gán dữ liệu cho đặt hàng
                Donhang objDonhang = new Donhang();

                objDonhang.MaNguoidung = int.Parse(Session["iMaNguoiDung"].ToString());
                objDonhang.Ngaydat = DateTime.Now;
                objDonhang.Tinhtrang = 1;
                db.Donhangs.Add(objDonhang);
                //lưu thông tin vào bảng đặt hàng
                //db.Donhangs.SaveChangs();

                int iMadon = objDonhang.Madon;
                List<Chitietdonhang> lstchitietdonhangs = new List<Chitietdonhang>();
                foreach (var item in lstcart)
                {
                    Chitietdonhang obj = new Chitietdonhang();
                    obj.Soluong = item.iSoLuong;
                    obj.Madon = iMadon;
                    obj.Masp = item.iMasp;
                    lstchitietdonhangs.Add(obj);
                }
                db.Chitietdonhangs.AddRange(lstchitietdonhangs);
                //db.Chitietdonhangs.SaveChanges();
            }
            return View();
        }
    }
}