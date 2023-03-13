package och19;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//SingleTon + DBCP 사용
public class MemberDao {

	//SingleTon으로 resource 절감
	private static MemberDao instance;
	
	private MemberDao() {
		
	}
	
	public static MemberDao getInstance() {
		if (instance == null) {
			instance = new MemberDao();
		}
		return instance;
	}
	
	//DBCP
	private Connection getConnection() {
		Connection conn = null;
		try {
			Context ctx = new InitialContext();
			DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/OracleDB");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	
	public boolean checkId(String id) {
		boolean result = false;
		String sql = "select * from member1 where id = ?";
		
		try {
			Connection conn = getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			System.out.println("id : " + id);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			result = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
}
