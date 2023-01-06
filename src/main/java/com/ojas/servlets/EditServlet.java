package com.ojas.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ojas.daoimpl.UserDaoImpl;
import com.ojas.pojo.UserEntity;
@WebServlet("/edit")
public class EditServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		UserDaoImpl impl = new UserDaoImpl();
		UserEntity user = impl.viewOneUser(id);
		req.setAttribute("user", user);
		req.getRequestDispatcher("/edit.jsp").forward(req, resp);
	}
}
