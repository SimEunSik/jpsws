package daodto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class ActorDao {
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://localhost:3306/sakila?useSSL=false&serverTimezone=UTC";
	private String uid = "root";
	private String upw = "rootpass";
	
	public ActorDao() {
		try {
			Class.forName(driver);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<ActorDto> actorSelect(int cnt) {
		ArrayList<ActorDto> dtos = new ArrayList<ActorDto>();
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		

		try {
			// 0. sql
			String sql = "select * from actor limit ?";
			// 1. conn
			conn = DriverManager.getConnection(url, uid, upw);
			// 2. query
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cnt);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String actorId = rs.getString("actor_id");
				String firstName = rs.getString("first_name");
				String lastName = rs.getString("last_name");
				String lastUpdate = rs.getString("last_update");
				
				ActorDto dto = new ActorDto(actorId, firstName, lastName, lastUpdate);
				dtos.add(dto);
				
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		
		return dtos;
		
	}
	
	
	
}
