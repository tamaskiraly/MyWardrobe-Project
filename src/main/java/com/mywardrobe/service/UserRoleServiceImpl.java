package com.mywardrobe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mywardrobe.model.UserRole;
import com.mywardrobe.repository.UserRoleRepository;

@Service("userroleService")
public class UserRoleServiceImpl implements UserRoleService{
	@Autowired
	UserRoleRepository userrolerepository;
	
	@Override
	public UserRole save(UserRole userrole) {
		return userrolerepository.save(userrole);
	}

}
