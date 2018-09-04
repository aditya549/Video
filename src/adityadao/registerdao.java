package adityadao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import userbean.userbean;

public class registerdao {

	public static void register(userbean user) {
		// TODO Auto-generated method stub
		try {
			String abc=user.getEmail();
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "aditya", "aditya");
			String sql="select * from video where email='"+abc+"'";
			Statement s=con.createStatement();
			ResultSet rs=s.executeQuery(sql);
			if(rs.next()) {
				System.out.println("already exists");
			}else {
				PreparedStatement ps=con.prepareStatement("insert into video(username,password,email,gender,id) values(?,?,?,?,?)");
				ps.setString(1, user.getUsername());
				ps.setString(2, user.getPassword());
				ps.setString(3, user.getEmail());
				ps.setString(4, user.getGender());
				ps.setInt(5, user.getId());
				int i=ps.executeUpdate();
				if(i==1) {
					user.setValid(true);
					System.out.println("insert successful");
					
				}else {user.setValid(false);
					System.out.println("not inserted");
				}
				

			
			}
			
					}catch(Exception e) {
			System.out.println(e);
		}
		
	}

}
