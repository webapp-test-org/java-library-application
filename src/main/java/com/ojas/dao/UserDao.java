package com.ojas.dao;

import java.util.List;

import com.ojas.pojo.UserEntity;

public interface UserDao {

	public boolean register(UserEntity user);

	public List<UserEntity> viewAllUsers();

	public List<Object> getPassword(String email);

	public int updateUser(UserEntity user);

	public int deleteUser(int id);

}
