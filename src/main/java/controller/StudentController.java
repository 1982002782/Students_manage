package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pojo.Student;
import pojo.User_Students;
import service.StudentService;
import service.UserService;

@Controller
public class StudentController {
	@Autowired
	
	private StudentService studentService;
	private UserService userService;
	@RequestMapping("updateStudentInformation.do")
	public String updateStudentInformation(Student student,HttpSession session, HttpServletResponse response) throws IOException {
		User_Students user_Students = (User_Students)session.getAttribute("user");
		String username = user_Students.getStudent().getSno();
		String password = user_Students.getPassword();
		student.setSno(username);
		int a = studentService.updateStudentInformation(student);
		if(a==1) {
			User_Students new_user_Students = userService.queryStudentToLogin(username, password);
			session.setAttribute("user", new_user_Students);
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('修改成功！');window.location='student.jsp'</script>");
			out.flush();
		}
		else {
			response.setCharacterEncoding("utf-8");
			PrintWriter out = response.getWriter();
			response.setContentType("text/html;charset=utf-8");
			out.print("<script>alert('修改失败！');window.location='student_modifyInformation.jsp'</script>");
			out.flush();
		}
		return "student";
	}
}
