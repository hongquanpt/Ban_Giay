using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using QuanLyBanGiay_ADMIN.Data;
using QuanLyBanGiay_ADMIN.Models;
using QuanLyBanGiay_ADMIN.Models_User;

namespace QuanLyBanGiay_ADMIN.Controllers
{
	public class BillController : Controller
	{
		private readonly BanGiayContext _context;

		public BillController(BanGiayContext context)
		{
			_context = context;
		}
		public IActionResult Index(string thongbao)
		{
			ViewBag.Thongbaotontai = thongbao;
			return View();
		}

		public IActionResult BillDetails(string billID = "")
		{
			// Kiểm tra đơn hàng tồn tại
			int numbill = _context.Hoadons.Count(hd => hd.MaHoadon == billID);
			if (numbill != 0)
			{
				Hoadon hd = new Hoadon();
				hd = _context.Hoadons.Where(hd => hd.MaHoadon == billID).FirstOrDefault();

				Hoadonchitiet hoadonchitiet = new Hoadonchitiet();
				hoadonchitiet.mahoadon = hd.MaHoadon;
				hoadonchitiet.makhachhang = hd.MaKhachhang;
				hoadonchitiet.diachi = hd.Diachigiaohang;
				hoadonchitiet.ngaydathang = hd.Ngaydathang?.ToString("dd-MM-yyyy");
				hoadonchitiet.phuongthucthanhtoan = hd.PhuongthucTt;
				hoadonchitiet.trangthai = exchangeStatus(hd.TrangthaiHD);
				// Thêm sản phẩm vào hóa dơn
				hoadonchitiet.danhsachsphd = _context.SanphamHoadons.FromSqlRaw("GetSanphamhoadon {0}", hd.MaHoadon).ToList();

				return View(hoadonchitiet);
			}
			else
			{
				return RedirectToAction("Index", "Bill", new { thongbao = "Hóa đơn bạn tìn không tồn tại" });
			}
		}

		public string exchangeStatus(int? numstatus)
		{
			string status = "";
			switch (numstatus)
			{
				case 0: status = "Chờ xử lý"; break;
				case 1: status = "Đang giao"; break;
				case 2: status = "Giao thành công"; break;
				case 3: status = "Hủy"; break;
			}
			return status;
		}
	}
}