package br.com.caelum.jdbc.teste;

import java.util.Calendar;

import br.com.caelum.jdbc.dao.ContatoDao;
import br.com.caelum.jdbc.modelo.Contato;

public class TestaInsere {

	public static void main(String[] args) {
		// GERANDO OS DADOS PARA POPULAR A TABELA
		Contato contato = new Contato();
		contato.setNome("João");
		contato.setEmail("joao@mail.com");
		contato.setEndereco("Rua do João, 42");
		contato.setDataNascimento(Calendar.getInstance());
		
		ContatoDao dao = new ContatoDao();
		
		dao.adiciona(contato);
		
		System.out.println("Contato gravado!");
	}

}
