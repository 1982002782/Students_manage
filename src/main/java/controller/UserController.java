package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.Date;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.User_Students;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("StudentLogin.do")
	public String StudentLogin(HttpServletResponse response,@RequestParam("Sno")String Sno,@RequestParam("password")String password,Model model,HttpSession session) throws IOException {
		if(Sno == "" || Sno == null && password == "" || password == null) {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('«Î ‰»Î’À∫≈√‹¬Î£°');window.location='login.jsp'</script>");
			out.flush();
		}
		User_Students user_Student = userService.queryStudentToLogin(Sno, password);
		if(user_Student == null) {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('’À∫≈ªÚ√‹¬Î¥ÌŒÛ£°');window.location='login.jsp'</script>");
			out.flush();
		}
		
		InetAddress addr = InetAddress.getLocalHost();
		String ip = addr.getHostAddress().toString(); // ªÒ»°ip
		Date now = new Date(); // ªÒ»°µ«¬º ±º‰
		session.setAttribute("time", now);
		session.setAttribute("ip", ip);
		session.setAttribute("user_Student", user_Student);
		return "student";
	}
}
