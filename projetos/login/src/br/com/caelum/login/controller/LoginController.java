package br.com.caelum.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import br.com.caelum.login.dao.JdbcLoginDao;
import br.com.caelum.login.modelo.Login;

@Controller
public class LoginController {
	
	@RequestMapping("criaUsuario")
	public String criaUsuario(Login login) {
		JdbcLoginDao dao = new JdbcLoginDao();
		dao.criaUsuario(login);
		return "login/criado";
	}
	
	@RequestMapping("autenticaUsuario")
	public String autenticaUsuario(Login login) {
		JdbcLoginDao dao = new JdbcLoginDao();
		if (dao.autenticaUsuario(login)) {
			return "paginaInicial";
		}
		return "falhaAutenticacao";
	}
	
}
