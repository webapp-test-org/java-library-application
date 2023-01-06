package com.ojas.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ojas.daoimpl.UserDaoImpl;
import com.ojas.pojo.UserEntity;
@WebServlet("/password")
public class GetPasswordServlet extends HttpServlet {
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	String email = req.getParameter("email");
	UserDaoImpl impl = new UserDaoImpl();
	List<Object> viewOneUser = impl.getPassword(email);
	 PrintWriter pw = resp.getWriter();
	 resp.setContentType("text/html");
	 if(!viewOneUser.isEmpty()) {
		 for(Object u : viewOneUser) {
		 pw.println("<div style='text-align:center;font-size:30px'>");
		 pw.println("Your Password is : " + u);
		 pw.println("<br>");
		 pw.println("<a href='login.jsp'>Back</a>");
		 pw.println("</div>");
		 }
	 }
	 else {
		 pw.println("Invalid email id");
	 }
	
}
}
