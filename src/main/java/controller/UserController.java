package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import pojo.Student;
import pojo.User_Admin;
import pojo.User_Students;
import service.StudentService;
import service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	private StudentService studentService;
	@RequestMapping("Login.do")
	public String Login(HttpServletResponse response,@RequestParam("name")String username,@RequestParam("password")String password,Model model,HttpSession session) throws IOException {
		if(username == "" || username == null && password == "" || password == null) {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('???????˺????룡');window.location='login.jsp'</script>");
			out.flush();
		}
		User_Students user_Student = userService.queryStudentToLogin(username, password);
		User_Admin user_Admin = userService.queryAdminToLogin(username, password);
		if(user_Student == null && user_Admin==null) {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('?˺Ż???????????');window.location='login.jsp'</script>");
			out.flush();
		}
		if(user_Student !=null) {
			System.out.println(user_Student);
			System.out.println(user_Student.getStudent().getSno());
			InetAddress addr = InetAddress.getLocalHost();
			String ip = addr.getHostAddress().toString(); // ??ȡip
			Date now = new Date(); // ??ȡ??¼ʱ??
			session.setAttribute("time", now);
			session.setAttribute("ip", ip);
			session.setAttribute("user", user_Student);
			return "student";
		}
		else if(user_Admin !=null) {
			List<Student> students = studentService.queryAllStudents();
			InetAddress addr = InetAddress.getLocalHost();
			String ip = addr.getHostAddress().toString(); // ??ȡip
			Date now = new Date(); // ??ȡ??¼ʱ??
			session.setAttribute("time", now);
			session.setAttribute("ip", ip);
			session.setAttribute("users", students);
			return "admin";
		}
		return "login";
	}
	
	@RequestMapping("updatePassword.do")
	public String updatePassword(HttpServletResponse response,HttpSession session,Model model,@RequestParam("password_1")String password_1,@RequestParam("password_2")String password_2) throws IOException {
		User_Students user_Students = (User_Students)session.getAttribute("user"); //??ȡ??????session?µĵ?¼?û?????Ϣ
		String p=user_Students.getPassword();  //??ȡ??¼?û??ľ?????
		String u = user_Students.getStudent().getSno();
		if(p.equals(password_1)) {  //???????ľ?????ƥ??
			int i = userService.updatePassword(password_1,password_2,u); //ƥ???ɹ????????????????޸ĸ??û???????
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('?޸ĳɹ?');window.location='student.jsp'</script>");
			out.flush();
		}
		else {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('??????????');window.location='student_changePassword.jsp'</script>");
			out.flush();
		}
		return "student";
	}
	
}
