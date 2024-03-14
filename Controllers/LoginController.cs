using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using QuanLyBanGiay_ADMIN.Data;
using QuanLyBanGiay_ADMIN.Models;

namespace QuanLyBanGiay_ADMIN.Controllers
{
    public class LoginController : Controller
    {
        private readonly BanGiayContext context;

        public LoginController(BanGiayContext context)
        {
            this.context = context;
        }
        
		[HttpGet]
        public IActionResult Index(string Username, string Password)
        {
            List<Nguoidung> data = context.Nguoidungs.ToList();
            if (Username is null || Password is null)
            {
                return View();
            }
            else
            {
                var nguoidung = context.Nguoidungs.FirstOrDefault(nd => nd.Username == Username);
                if (nguoidung is null)
                {
                    // Tên đăng nhập không tồn tại
                    ViewBag.Thongbaotk = "Tên đăng nhập không tồn tại!";
                    return View();
                }
                else
                {
                    if (nguoidung.Password != Password)
                    {
                        // Sai mật khẩu
                        ViewBag.Thongbaomk = "Mật khẩu của bạn không chính xác";
                        return View();
                    }
                    else
                    {
                        // Nếu đúng
                        if (nguoidung.MaChucvu == 1)
                        {
                            HttpContext.Session.SetString("tk", Username);
                            HttpContext.Session.SetString("Username", Username);
                            HttpContext.Session.SetString("Password", Password);
                            return RedirectToAction("Index", "Admin");
                        }
                        else if (nguoidung.MaChucvu == 2)
                        {
                            HttpContext.Session.SetString("tk", Username);
                            HttpContext.Session.SetString("Username", Username);
                            HttpContext.Session.SetString("Password", Password);
                            string url = HttpContext.Session.GetString("preUrl");
                            return Redirect(url);
                        }
                    }
                }
            }
            return View();
        }
        public JsonResult SetURL(string url)
		{
			HttpContext.Session.SetString("preUrl", url);
			return Json(new { success = true });
		}

		public IActionResult SignUp()
		{
			return View();
		}

        [HttpPost]
        public IActionResult SignUp(Nguoidung nguoidung)
        {
            //Kiểm tra tên đăng nhập có tôn tại
            var danhsachnd = context.Nguoidungs.Where(nd => nd.Username == nguoidung.Username).ToList();
            if (danhsachnd.Count != 0)
            {
                ViewBag.Thongbaotk = "Tên đăng nhập đã tồn tại!";
                return View(nguoidung);
            }
            else
            {
                context.Nguoidungs.Add(nguoidung);
                context.SaveChanges();
                return RedirectToAction("Index", "Login");
            }
        }
        public IActionResult Logout()
        {
            HttpContext.Session.Clear();
            return RedirectToAction("Index","Home");
        }

    }
}
