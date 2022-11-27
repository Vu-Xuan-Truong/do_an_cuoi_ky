using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using webHD.Models;

namespace webHD.Controllers
{
    public class DanhmucController : Controller
    {
        HatGiongNDEntities db = new HatGiongNDEntities();
        // GET: Danhmuc
        public ActionResult DanhmucPartial()
        {
            var danhmuc = db.Danhmucsanphams.ToList();
            return PartialView(danhmuc);
        }
        public ActionResult NhacungcapPartial()
        {
            var nhacungcap = db.Nhacungcaps.ToList();
            return PartialView(nhacungcap);
        }
    }
}