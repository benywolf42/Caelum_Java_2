package com.br.caelum.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/mvc")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) {
		String nomeDaClasse = request.getParameter("logica");
		new nomeDaClasse().executa(request,response);
		//String nomeDaClasse = "br.com.caelum.mvc.logica." + request.getParameter()
		
	}
}
