package com.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.*;
import com.entity.*;

@WebServlet(name = "cyclist", urlPatterns = { "/cyclist" })
public class CyclistServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private String aux;
	
    public CyclistServlet() {
    }
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
    
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
    
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 switch (aux) {
		case "list":
			CyclistDao dao = new CyclistDao();
			List<Cyclist> list = dao.list();
			
			break;

		default:
			break;
		}
	}
}
