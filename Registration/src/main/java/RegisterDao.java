import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.mysql.jdbc.Driver;

public class RegisterDao {

	private String dburl="jdbc:mysql://localhost:3306/kyc"; 
	private String dbuname="root"; 
	private String dbpassword="madhukiran"; 
	private String dbdriver="com.mysql.cj.jdbc.Driver";

	public void loadDriver(String dbdriver) 
	{ 
		/*
		 * try { Class.forName(dbdriver);
		 * 
		 * } catch (ClassNotFoundException e) { // TODO Auto-generated catch block
		 * e.printStackTrace();}
		 */
		
			try {
				DriverManager.deregisterDriver(new Driver());
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Connection getConnection() { 
		Connection con = null;
		try {
			con= DriverManager.getConnection(dburl, dbuname,dbpassword); }
		catch (SQLException e) {

			e.printStackTrace(); }

		return con; }

	public String insert(Member member) throws SQLException 

	{


		loadDriver(dbdriver);
		Connection con=getConnection(); 
		//String sql="insert into kycform values(?,?,?,?,?,?,?,?,?)";
		String result="connection get Establisher"; 
		PreparedStatement ps;
		try {
			ps=con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?,?)");
			ps.setString(1, member.getName());
			ps.setString(2, member.getAge());
			ps.setString(3, member.getGender());
			ps.setString(4, member.getNationality());
			ps.setString(5, member.getEmail());
			ps.setString(6, member.getcAddress());
			ps.setString(7, member.getpAddress());
			ps.setString(8, member.getOccupation());
			ps.setString(9, member.getOccuDetails());
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			result="Data not Entered...  Some Fields are Missing in the form.......!!!! ";
		}

		return result;

	}

}
