package com.mydrive.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mydrive.repository.MyDriveRepository;
import com.mydrive.userDao.User;

@Service
public class UserServicesBean implements UserServices {

	@Autowired
	private MyDriveRepository myDriveRepository;
	
	@Override
	public List<User> find(String email) {
		// TODO Auto-generated method stub
		List<User> users = myDriveRepository.findByEmail(email);
		return users;
	}

}
