package och11;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class Member1DAO {
	private Connection getConnection() {
		Connection conn = null;
		try{
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		System.out.println(conn);
		return conn;
	}
	
	public int insert(Member1DTO member1DTO) {
		String sql = "insert into member1 values(?, ?, ?, sysdate)";
		int result = 0;
		
		try {
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			System.out.println("sql : " + sql);
			pstmt.setString(1, member1DTO.getId());
			pstmt.setString(2, member1DTO.getPw());
			pstmt.setString(3, member1DTO.getName());
			result = pstmt.executeUpdate();
			
			if (result > 0) {
				System.out.println("sql 입력 성공");
			} else {
				System.out.println("sql 입력 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println("result : " + result);
		return result;
		
	}
	
	
	
}
