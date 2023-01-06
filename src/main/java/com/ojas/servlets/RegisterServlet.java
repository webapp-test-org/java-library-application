package com.ojas.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ojas.daoimpl.UserDaoImpl;
import com.ojas.pojo.UserEntity;
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserDaoImpl impl = new UserDaoImpl();
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String uname = req.getParameter("uname");
		String password = req.getParameter("password");
		UserEntity user = new UserEntity();
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setEmail(email);
		user.setUserName(uname);
		user.setPassword(password);
		boolean add = impl.register(user);
		 resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		if(add) {
			pw.println("<div style='text-align:center;font-size:30px'>");
			pw.println("User Registred successfully");
			pw.println("<br><br>");
			 pw.println("<a href='login.jsp'>Back</a>");
			 pw.println("</div>");
		}
		else {
			pw.println("User Not Registred ");
		}
	}
}
