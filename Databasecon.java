package databaseconnection;
import java.sql.*;

public class Databasecon
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cyber_crime","root","admin");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}
