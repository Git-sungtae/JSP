package och10;

public class DBCP {
	
//	Context.xml – WebContent 폴더의 META-INF 폴더에 작성
//		<Context> 
//		<Resource name=“리소스 이름" 
//		auth=“권한" 
//		type=“리소스 종류" - 데이터베이스는 javax.sql.DataSource
//		username=“DB 서버에 로그인할 계정을 지정" 
//		password=＂DB 서버에 로그인할 게정의 비밀번호를 지정" 
//		driverClassName=“드라이버이름" 
//		factory=“팩토리클래스 이름" 
//		url=＂접속할 DB 서버의 URL을 지정" 
//		maxActive=“최대사용개수" 
//		maxIdle=“사용되지 않고 풀에 저장될 수 있는 최대 커넥션 개수"/> 
//		minIdle=“사용되지 않고 풀에 저장될 수 있는 최소 커넥션 개수”
//		whenExhaustedAction=＂커넥션 풀에서 가져올 수 없을 때의 동작으로 0이면
//		maxWait 만큼 기다리고 0이면 에러를 발생시키며 2이면
//		일시적으로 커넥션을 생성해서 사용”
//		maxWait=“Connection의 사용 요청이 있을 때 대기 시간을 지정,
//		대기시간으로 1/1000초 단위”
//		/> 
//		</Context>
	
// 실사용 예
//	<Context> 
//	<Resource name="jdbc/OracleDB" 
//	auth="Container" 
//	type="javax.sql.DataSource" 
//	username="scott" 
//	password="tiger" 
//	driverClassName="oracle.jdbc.driver.OracleDriver" 
//	factory="org.apache.tomcat.dbcp.dbcp.BasicDataSourceFactory" 
//	url="jdbc:oracle:thin:@127.0.0.1:1521:ORCL" 
//	maxActive="500" 
//	maxIdle="100"/> 
//	</Context>
	
	//위치 : META-INF - Context.xml
	
	
	
	
}
