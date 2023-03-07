package och10;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ProfessorDAO {
	
	
	public List<ProfessorDTO> getProf(){
		ArrayList<ProfessorDTO> profList = new ArrayList<>();
		String sql = "SELECT * from professor"; 
		
		try {
			Class.forName(Db.DRIVER);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try (Connection conn = DriverManager.getConnection(Db.URL, Db.UID, Db.UPW);
				Statement stmt = conn.createStatement()){
			ResultSet rs = stmt.executeQuery(sql);
			System.out.println("sql : " + sql);
			while (rs.next()) {
				ProfessorDTO dto = new ProfessorDTO();
				dto.setProfno(rs.getInt(1));
				dto.setName(rs.getString(2));
				dto.setPosition(rs.getString(4));
				dto.setSal(rs.getInt(5));
				
				System.out.print("ProfList에 dto담기 성공여부");
				System.out.println(profList.add(dto));
			}
			
			
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return profList;
		
	}
}
