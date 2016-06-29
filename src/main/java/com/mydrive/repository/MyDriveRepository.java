package com.mydrive.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mydrive.userDao.User;

@Repository
public interface MyDriveRepository extends JpaRepository<User, Long>  {
	List<User> findByEmail(String email);
}
