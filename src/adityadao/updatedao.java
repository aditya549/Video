package adityadao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import userbean.userbean;

public class updatedao {

	public static void update(userbean user) {
		// TODO Auto-generated method stub
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aditya", "aditya");
			PreparedStatement ps=con.prepareStatement("update video set username=?,password=?,email=?,gender=? where id=?");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getGender());
			ps.setInt(5, user.getId());
			int i=ps.executeUpdate();
			if(i==1) {
				user.setValid(false);
				System.out.println("update successful");
				
			}else {user.setValid(true);
				System.out.println("not updated");
			}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	}

}

