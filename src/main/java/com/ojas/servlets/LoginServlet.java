package com.ojas.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ojas.daoimpl.UserDaoImpl;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("uname");
		String password = req.getParameter("password");
		boolean verify = UserDaoImpl.verifyUserNameAndPassword(name, password);
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
		if(verify) {
			pw.println("<div style='text-align:center;font-size:30px'>");
			pw.println("Valid User");
			pw.println("<br><br>");
			pw.println("<a href='viewall.jsp'>ViewAllUsers</a> <br>");
			pw.println("<br><br>");
			pw.println("<a href='login.jsp'>Back</a>");
			pw.println("</div>");
		}
		else {
			pw.println("InValid User");
		}
	}

}
