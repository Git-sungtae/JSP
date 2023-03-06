package och10;
//ora04의 dto
//DTO : Data 전달하는 객체 단위(일반적으로 테이블 단위로 생성한다.)
public class DeptDto {
	private int deptno;
	private String dname;
	private String loc;
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public String getDname() {
		return dname;
	}
	public void setDname(String dname) {
		this.dname = dname;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	
	
}
