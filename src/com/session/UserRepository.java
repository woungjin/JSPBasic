package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {

	// DB���� 
	private static List<User> userList = new ArrayList<>();

	public static List<User> getUserList() {
		return userList;
	}

	public static void setUserList(User user) {
		userList.add(user);
	}
	
	public static User getUser(String id) {
		int a = 0;
			for(int i=0; i<getUserList().size(); i++ ) { 
				if(getUserList().get(i).getId().equals(id)) {
					return getUserList().get(i);
				}
			}
			return null;
	}
	
	public static void deleteUser(String id) {
		userList.remove(getUser(id)); // id�� ������ �༮�� ��ü�� ������ ���� 
		
	}
	// ����
	
	

}
