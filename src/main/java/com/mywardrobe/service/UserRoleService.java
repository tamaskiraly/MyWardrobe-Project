package com.mywardrobe.service;

import org.springframework.stereotype.Service;

import com.mywardrobe.model.UserRole;

@Service("userroleService")
public interface UserRoleService {
	UserRole save(UserRole userrole);
}
