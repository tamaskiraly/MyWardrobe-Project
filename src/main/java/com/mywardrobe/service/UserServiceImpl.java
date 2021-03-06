package com.mywardrobe.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mywardrobe.model.User;
import com.mywardrobe.repository.UserRepository;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	@Transactional
	public User save(User user) {
		System.out.println("In save USER method in USERSERVICEIMPL");
		user = userRepository.save(user);
		
		return user;
	}

	@Transactional
	public List<User> getAllUsers(){
		
		return userRepository.findAll();
	}
	
	public String getCurrentUserName(){
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	     String user = auth.getName();
	     System.out.println(user);
	     
	     return user;
	}
}
