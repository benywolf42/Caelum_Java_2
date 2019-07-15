package br.com.caelum.login.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.caelum.login.login.ConnectionFactory;
import br.com.caelum.login.modelo.Login;

public class JdbcLoginDao {
	private final Connection connection;

	public JdbcLoginDao() {
		try {
			this.connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	public void criaUsuario(Login login) {
		String sql = "insert into login (usuario, hashSenha) values (?,?)";
		PreparedStatement stmt;
		try {
			stmt = connection.prepareStatement(sql);
			stmt.setString(1, login.getUsuario());
			stmt.setString(2, login.getHashSenha());
			stmt.execute();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean autenticaUsuario(Login login) {
		try {
			PreparedStatement stmt = this.connection.
					prepareStatement("select * from login where usuario = ? and hashSenha = ? ");
			stmt.setString(1, login.getUsuario());
			stmt.setString(2, login.getHashSenha());
			ResultSet rs = stmt.executeQuery();
			
			boolean localizado = rs.next();
			rs.close();
			stmt.close();
			
			return localizado;
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
