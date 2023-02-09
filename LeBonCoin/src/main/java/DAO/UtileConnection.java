package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class UtileConnection {
	
public static Connection seConnecter() {
		
		String DRIVER = "org.postgresql.Driver";
		String URL = "jdbc:postgresql://localHost:5432/LeBonCoin";
		String LOGIN = "postgres";
		String PASSWORD = "1502";
		Connection connection = null;
		
		try {
			Class.forName(DRIVER);
			connection = DriverManager.getConnection(URL, LOGIN, PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		return connection;
	}
	
	public static void main(String[] args) throws SQLException {
		
		System.out.println ("open connection");
		Connection con = UtileConnection.seConnecter();
		
		Statement st = con.createStatement();
		
		try {
			con.close();
			System.out.println ("closed connection");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
