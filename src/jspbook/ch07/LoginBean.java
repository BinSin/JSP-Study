package jspbook.ch07;

public class LoginBean {

	private String userid;
	private String passwd;
	private String pnumber;
	private String hobby;
	private String secret;

	

	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public String getPnumber() {
		return pnumber;
	}
	public void setPnumber(String pnumber) {
		this.pnumber = pnumber;
	}
	
	public String getHobby() {
		return hobby;
	}
	public String getSecret() {
		return secret;
	}


	public boolean checkUser() {
		try {
			if(userid.equals(_userid) && passwd.equals(_passwd)
					&& pnumber.equals(_pnumber) ) {
				hobby = "농구";
				secret = "비밀";
				return true;
			}
			else
				return false;
		} catch(Exception e) {
			System.out.println("내용을 전부 입력하세요.");
		}
		return false;
	}
	
}
