using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using QuanLyBanGiay_ADMIN.Data;
using QuanLyBanGiay_ADMIN.Infrastructure;
using QuanLyBanGiay_ADMIN.Models_User;

namespace QuanLyBanGiay_ADMIN.Components
{
	public class AdminBar: ViewComponent
	{
		private readonly BanGiayContext context;
		public AdminBar(BanGiayContext _context)
		{
			context = _context;
		}

		public IViewComponentResult Invoke()
		{

			var cxl = context.HienThiHoaDon_cxls.FromSqlRaw("HD_ChuaXuLy").ToList();
            ViewBag.CXL = cxl.Count();

            var dxl = context.HienThiHoaDons.FromSqlRaw("HD_DaXuLy").ToList();
            ViewBag.DXL = dxl.Count();

            var dg = context.HienThiHoaDons.FromSqlRaw("HD_DaGiao").ToList();
            ViewBag.DG = dg.Count();

            var da = context.HienThiYeuCaus.FromSqlRaw("YeuCauKH").ToList();
            ViewBag.YC = da.ToList();
            ViewBag.TB = da.Count();
            var username = HttpContext.Session.GetString("tk");
            ViewBag.Username = username;

			return View();
		}
	}
}
