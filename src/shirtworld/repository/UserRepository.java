package shirtworld.repository;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import shirtworld.database.ConnectionDatabase;
import shirtworld.model.Carrinho;
import shirtworld.model.Usuario;

public class UserRepository {

	
	
	public static Usuario checkUser(Usuario user){
			
		Connection conn = ConnectionDatabase.getConnection();
		try {
			Statement stmt = conn.createStatement();
			
			MessageDigest passMD = MessageDigest.getInstance("MD5");
			passMD.update(user.getSenha().getBytes(),0, user.getSenha().length());
			
			
			String sql = "SELECT * FROM usuario WHERE login = '"+user.getLogin()+"' AND senha = '"+new BigInteger(1,passMD.digest()).toString(16)+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			Usuario userReturned = null;
			
			while(rs.next()){
				userReturned = new Usuario(rs.getString("login"),rs.getString("senha"));
				userReturned.setAdmin(rs.getBoolean("admin"));
				userReturned.setCarrinhoId(rs.getInt("carrinho_id"));
			}
			rs.close();
			return userReturned;
			
		} catch (SQLException | NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
		
	}
	
	
	public static void insertUser(Usuario usuario,Carrinho carrinho){
		
		Connection conn = ConnectionDatabase.getConnection();
		try {
			Statement stmt = conn.createStatement();
			
			MessageDigest passMD = MessageDigest.getInstance("MD5");
			passMD.update(usuario.getSenha().getBytes(),0, usuario.getSenha().length());
			
			String sql = "INSERT INTO usuario (id,login,senha,admin) "
							+ "values ("+usuario.getId()+",'"+usuario.getLogin()+"',"
						    + "'"+new BigInteger(1,passMD.digest()).toString(16)+"',"
						    + ""+usuario.isAdmin()+")";
			
			stmt.execute(sql);
			
			String sqlCart = "INSERT INTO carrinho (id,user_login,preco) "
					+ "values ("+carrinho.getId()+",'"+usuario.getLogin()+"',"
				    + ""+carrinho.getPrecoTotal()+")";
			
			stmt.execute(sqlCart);
			
			String sqlCheckCart = "SELECT id FROM carrinho WHERE user_login = '"+usuario.getLogin()+"'";
			ResultSet rs = stmt.executeQuery(sqlCheckCart);
			if(!rs.isClosed())
			while(rs.next()){
				String sqlUPTUsuario = "UPDATE usuario SET carrinho_id="+rs.getInt("id")+" WHERE login = '"+usuario.getLogin()+"'";
				stmt.executeUpdate(sqlUPTUsuario);
			}
		
			rs.close();
			
		} catch (SQLException | NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			
		}
		
		
	}
	
	public static Carrinho getNewCart(Usuario user){
		Carrinho carrinho = new Carrinho();
    	Random random = new Random();   
    	
    	carrinho.setId(random.nextInt(1000));
    	carrinho.setPrecoTotal(0);
    	carrinho.setUsuario(user);
    	
    	return carrinho;
	}
	
	
	public static Carrinho getCarrinho(Usuario usr){
		String sql = "SELECT * FROM carrinho WHERE user_login = '"+usr.getLogin()+"'";
		Connection conn = ConnectionDatabase.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			Carrinho carrinho = null;
			Usuario usuario = null;
			
			String user = "";
			while(rs.next()){
				
				carrinho = new Carrinho();
				user = "SELECT * FROM usuario WHERE login='"+rs.getString("user_login")+"'";
				carrinho.setId(rs.getInt("id"));
				carrinho.setPrecoTotal(rs.getDouble("preco"));
				
				
			}
			rs.close();
			
			ResultSet rs2 = stmt.executeQuery(user);

			
			while(rs2.next()){
				usuario = new Usuario();
				usuario.setAdmin(rs2.getBoolean("admin"));
				usuario.setId(rs2.getInt("id"));
				usuario.setLogin(rs2.getString("login"));
				usuario.setSenha(rs2.getString("senha"));
				usuario.setCarrinhoId(rs2.getInt("carrinho_id"));
				carrinho.setUsuario(usuario);
			}
		
		
			return carrinho;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
		
	}
	
}
