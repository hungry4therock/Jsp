package sub1;

import javax.servlet.jsp.JspWriter;

public class Account {
	
	private String bank;
	private String id;
	private String name;
	private int money;
	
	public Account(String bank, String id, String name, int money) {
		this.bank = bank;
		this.id=id;
		this.name=name;
		this.money=money;
		
	}
	public void deposit(int money) {
		this.money += money;
	}
	public void withdraw(int money) {
		this.money -= money;
	}
	
	public void show(JspWriter out) throws Exception{
		out.println("<p>");
		out.println("은행명 : "+bank+"<br/>");
		out.println("이름: "+name+"<br/>");
		out.println("계좌번호 : "+id+"<br/>");
		out.println("잔액 : "+money+"<br/>");
		out.println("<p>");
	}
}
