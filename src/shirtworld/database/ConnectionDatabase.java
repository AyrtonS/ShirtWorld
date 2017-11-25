package shirtworld.database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionDatabase {
	
	private static final String USER_NAME = "root"; 
	private static final String DB_NAME = "shirtworld";
	private static final String PASSWORD = "";
	private static final String SERVER_IP = "localhost"; 
	private static final String URL = "jdbc:mysql://"+ SERVER_IP + "/" + DB_NAME; 
	private static Connection connection = null;
	public static String status = "";
	
	public ConnectionDatabase() {
		// TODO Auto-generated constructor stub
	}
	
	
	public static Connection getConnection(){
	
		
		String driverName = "com.mysql.jdbc.Driver";
		
		try {
			System.out.println("AAAAAAAAAAAAAAAAAAAAAAAAAA");
			Class.forName(driverName);
			connection = DriverManager.getConnection(URL, USER_NAME, PASSWORD);	
			
		} catch (ClassNotFoundException e) {
		
			e.printStackTrace();
			return null;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
			
		}
		  //Testa sua conexão//  
		 
        if (connection != null) {

            status = ("STATUS--->Conectado com sucesso!");

        } else {

            status = ("STATUS--->Não foi possivel realizar conexão");

        }

		return connection;
	}
	
	public static void loadDriver() throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
	}

	public static ResultSet executeQuery(String sqlQuery, Connection conn) throws SQLException {
		Statement stmt = conn.createStatement();
		return stmt.executeQuery(sqlQuery);
	}

	public static long executeInsert(String sqlCommand) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		conn = getConnection();
		stmt = conn.createStatement();
		stmt.executeUpdate(sqlCommand, Statement.RETURN_GENERATED_KEYS);

		rs = stmt.getGeneratedKeys();

		if (rs.next()) {
			return rs.getInt(1);
		}
		stmt.close();
		rs.close();
		conn.close();
		return -1;
	}

	public static void executeUpdate(String sqlCommand) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		conn = getConnection();
		stmt = conn.createStatement();
		stmt.executeUpdate(sqlCommand);
		stmt.close();
		conn.close();
	}
	
	public static boolean closeConnection(){
		
		try {
			
			ConnectionDatabase.getConnection().close();
			return true;
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public static Connection restartConnection(){
		
		closeConnection();
		return ConnectionDatabase.getConnection();
	
		
	}	

	
}







