package com.ojas.queries;

public interface QueryConstants {

	public String VIEWALL = "from UserEntity";
	
	public String VERIFY = "from UserEntity where userName=:userName AND password=:password";
	
	public String VIEWONE = "SELECT password from UserEntity where email=:email";
	
	public String UPDATE = "update UserEntity SET firstName=:firstName,lastName=:lastName,email=:email,userName=:userName,password=:password WHERE uid=:uid";
    public String DELETE = "delete from UserEntity where uid=:uid";
}
