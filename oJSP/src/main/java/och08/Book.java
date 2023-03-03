package och08;

public class Book extends Product{
	String writer;
	int page;
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
		System.out.println(this.writer);
		System.out.println(this);
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
		System.out.println(this.page);
	}
	
}
