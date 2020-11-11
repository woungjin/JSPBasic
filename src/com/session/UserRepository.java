package com.session;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {

	// DB가정 
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
		userList.remove(getUser(id)); // id가 동일한 녀석의 객체를 가져와 삭제 
		
	}
	// 정보
	
	

}
