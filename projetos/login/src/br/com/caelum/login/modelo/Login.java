package br.com.caelum.login.modelo;

import javax.validation.constraints.Size;

public class Login {
	private int id;
	@Size(min=3, max=15, message="O campo do usuário deve conter entre 3 e 15 caracteres")
	private String usuario;
	@Size(min=8, max=15, message="O campo da senha deve conter entre 8 e 15 caracteres")
	private String hashSenha;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getHashSenha() {
		return hashSenha;
	}
	public void setHashSenha(String hashSenha) {
		this.hashSenha = hashSenha;
	}
	
}
