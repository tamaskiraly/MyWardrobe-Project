package com.mywardrobe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mywardrobe.model.Authority;
import com.mywardrobe.repository.AuthorityRepository;

@Service("authorityService")
public class AuthorityServiceImpl implements AuthorityService{
	@Autowired
	AuthorityRepository authorityRepository;
	@Transactional
	public Authority saveAuthority(Authority authority) {
		System.out.println("In the Authority Repository");
		return authorityRepository.save(authority);
	}

}
