package com.eljstl.ex;

public class MemberInfoDto {
	private String id;
	private String pw;
	private String name;
	private String nicname;
	private String email;
	private String regdate;
	
	public MemberInfoDto() {
		// TODO Auto-generated constructor stub
	}	
	public MemberInfoDto(String id, String pw, String name, String nicname, String email) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nicname = nicname;
		this.email = email;
		
	}
	
	public MemberInfoDto(String id, String pw, String name, String nicname, String email, String regdate) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.nicname = nicname;
		this.email = email;
		this.regdate = regdate;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNicname() {
		return nicname;
	}

	public void setNicname(String nicname) {
		this.nicname = nicname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "MemberInfoDto [id=" + id + ", pw=" + pw + ", name=" + name + ", nicname=" + nicname + ", email=" + email
				+ ", regdate=" + regdate + "]";
	}

}
