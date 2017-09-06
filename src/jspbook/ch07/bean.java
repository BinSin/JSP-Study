package jspbook.ch07;

public class bean {
	private String userid;
	private String passwd;
	private String number;
	private String secret;
	private String hobby;
	
	final String _userid = "yongmin";
	final String _passwd = "123";
	final String _number = "010-1111-1111";
	
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
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getSecret() {
		return secret;
	}
	public void setSecret(String secret) {
		this.secret = secret;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	
	public boolean checkLogin() {
		try {
			if(userid.equals(_userid) && passwd.equals(_passwd)
					&& number.equals(_number) ) {
				hobby = "농구";
				secret = "비밀";
				return true;
			}
		} catch(Exception e) {
		}
		hobby = "비밀";
		secret = "비밀";
		return false;
	}
}
