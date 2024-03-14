using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.DotNet.Scaffolding.Shared.Messaging;
using Microsoft.EntityFrameworkCore;
using Microsoft.Identity.Client;
using QuanLyBanGiay_ADMIN.Data;
using QuanLyBanGiay_ADMIN.Models;
using System.Data;
using Xceed.Wpf.Toolkit;

namespace QuanLyBanGiay_ADMIN.Controllers
{
    public class AdminController : Controller
    {
        private readonly BanGiayContext context;

        //Employees, Departments : dataset trong sql

        //employees, departments: đối tượng kiểu list
        public AdminController(BanGiayContext context)
        {
            this.context = context;
        }
        public IActionResult Index()
        {
            if (HttpContext.Session.GetString("tk") is not null)
            {
				var data = context.HienThiYeuCaus.FromSqlRaw("YeuCauKH").ToList();
				ViewBag.YC = data;
				ViewBag.TB = data.Count();

				var cxl = context.HienThiHoaDon_cxls.FromSqlRaw("HD_ChuaXuLy").ToList().Count();
				ViewBag.CXL = cxl;

				var dxl = context.HienThiHoaDons.FromSqlRaw("HD_DaXuLy").ToList();
				ViewBag.DXL = dxl.Count();

				var dg = context.HienThiHoaDons.FromSqlRaw("HD_DaGiao").ToList();
				ViewBag.DG = dg.Count();

                ViewBag.YCH = data.Where(x => x.TrangThaiYeuCau == 0).ToList().Count();

                var sp_ad = context.SanPham_Applieds.FromSqlRaw("SanPham_daApDung_Voucher").ToList().Count();
                ViewBag.SP = sp_ad;

                var sp_all = context.HienThiSanPhams.FromSqlRaw("HienThiSanPham").ToList().Count();
                ViewBag.SP_ALL = sp_all;

                var ds = context.Nguoidungs.ToList();
				List<Nguoidung> dskh = new List<Nguoidung>();
				dskh = ds;
				var nd = dskh.Where(x => x.MaChucvu == 2).ToList();
				ViewBag.SoKH = nd.Count();

				var vc = context.Discounts.ToList();
				ViewBag.S = vc.Count();

				var username = HttpContext.Session.GetString("tk");
				ViewBag.Username = username;


                var t1 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 1)
                     .Sum(h => h.Thanhtien);
                var t2 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 2)
                     .Sum(h => h.Thanhtien);
                var t3 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 3)
                     .Sum(h => h.Thanhtien);
                var t4 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 4)
                     .Sum(h => h.Thanhtien);
                var t5 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 5)
                     .Sum(h => h.Thanhtien);
                var t6 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 6)
                     .Sum(h => h.Thanhtien);
                var t7 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 7)
                     .Sum(h => h.Thanhtien);
                var t8 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 8)
                     .Sum(h => h.Thanhtien);
                var t9 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 9)
                     .Sum(h => h.Thanhtien);
                var t10 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 10)
                     .Sum(h => h.Thanhtien);
                var t11 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 11)
                     .Sum(h => h.Thanhtien);
                var t12 = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == 12)
                     .Sum(h => h.Thanhtien);


                ViewBag.January = t1;
                ViewBag.February = t2; 
                ViewBag.March = t3; 
                ViewBag.April = t4; 
                ViewBag.May = t5;
                ViewBag.June = t6; 
                ViewBag.July = t7; 
                ViewBag.August = t8; 
                ViewBag.September = t9; 
                ViewBag.October = t10; 
                ViewBag.November = t11; 
                ViewBag.December = t12;

                var tdt = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2)
                     .Sum(h => h.Thanhtien);
                ViewBag.TongDoanhThu=tdt;
                ViewBag.DoanhThuTB = Math.Round((decimal)(tdt / 12),1);

                var ct = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2)
                     .Count();
                ViewBag.MT = ct;

                DateTime today = DateTime.Today;
                var ht = today.Month;
                
                // Lấy tháng trước
                DateTime lastMonthDate = today.AddMonths(-1);
                var tt = lastMonthDate.Month;
                
                // Doanh thu tháng này
                var dtht = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == ht)
                     .Sum(h => h.Thanhtien);
                
                // Doanh thu tháng trước
                var dttt = context.Hoadons
                     .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == tt)
                     .Sum(h => h.Thanhtien);
                

                //Tổng doanh thu 2 tháng
                var tongdoangthu = dtht + dttt;

                ViewBag.TongDoanhThuhs = tongdoangthu;
                ViewBag.HienTai = dtht;
                ViewBag.ThangTruoc = dttt;

                //SoDonThangNay
                var sdtn = context.Hoadons
                    .Where(h => h.TrangthaiHD == 2 && h.Ngaydathang.HasValue && h.Ngaydathang.Value.Month == ht)
                    .Count();

                ViewBag.DaBan = sdtn;

                return View();
			}
			return RedirectToAction("Index", "PageNotFound");
		}

       
        public IActionResult DangKy()
        {
            var username = HttpContext.Session.GetString("tk");
            ViewBag.Username = username;
            var da = context.HienThiYeuCaus.FromSqlRaw("YeuCauKH").ToList();
            ViewBag.YC = da.ToList();
            return View();
        }

        [HttpPost]

        public async Task<IActionResult> DangKy(Nguoidung ngd)
        {
            var da = context.HienThiYeuCaus.FromSqlRaw("YeuCauKH").ToList();
            ViewBag.YC = da.ToList();
            if (!ModelState.IsValid)
            {
                return View();
            }
            else
            {
                List<Nguoidung> data = context.Nguoidungs.ToList();

                foreach (var tk in data)
                {
                    if (ngd.Username == tk.Username)
                    {
                        await Response.WriteAsync("<script>alert('USERNAME existed');window.location = 'DangKy';</script>");
                        return View();
                    }
                }
                await context.Nguoidungs.AddAsync(ngd);
                await context.SaveChangesAsync();
                await Response.WriteAsync("<script>alert('Created Successfully !!!');window.location.assign('../Login/Index');</script>"); 
                return RedirectToAction("Index", "Login"); 
                
            }
        }

        
    }
}
