package com.mydrive.services;


import java.util.List;

import com.mydrive.userDao.User;

public interface UserServices {

	List<User> find(String email);
}
