package com.br.caelum.servlet;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/horaAgora")

public class HoraAgoraServlet extends HttpServlet {
	@Override
	protected void service (HttpServletRequest request, 
			HttpServletResponse response) throws IOException {
		
		LocalDateTime horaAgora = LocalDateTime.now();
		DateTimeFormatter formatador = DateTimeFormatter.ofPattern("HH:mm:ss");
		
		PrintWriter out = response.getWriter();
		out.println(horaAgora.format(formatador));
	}
}
