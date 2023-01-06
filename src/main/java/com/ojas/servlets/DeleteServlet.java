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
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet {

	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		UserDaoImpl impl = new UserDaoImpl();
		int delete = impl.deleteUser(id);
		PrintWriter pw = res.getWriter();
		if(delete!=0) {
		RequestDispatcher rd = req.getRequestDispatcher("viewall.jsp");
		rd.forward(req, res);
		}
		else {
			pw.println("Something went wrong");
		}
	}
}
