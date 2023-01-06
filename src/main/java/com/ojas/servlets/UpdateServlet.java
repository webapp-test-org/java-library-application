package com.ojas.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ojas.daoimpl.UserDaoImpl;
import com.ojas.pojo.UserEntity;
@WebServlet("/update")
public class UpdateServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	UserDaoImpl impl = new UserDaoImpl();
    	int id = Integer.parseInt(req.getParameter("uid"));
		String fname = req.getParameter("fname");
		String lname = req.getParameter("lname");
		String email = req.getParameter("email");
		String uname = req.getParameter("uname");
		String password = req.getParameter("password");
		UserEntity user = new UserEntity();
		user.setUid(id);
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setEmail(email);
		user.setUserName(uname);
		user.setPassword(password);
		int add = impl.updateUser(user);
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/html");
		if(add!=0) {
			RequestDispatcher rd = req.getRequestDispatcher("viewall.jsp");
			rd.forward(req, resp);
		}
		else {
			pw.println("Data Not updated");
		}
    }
}
