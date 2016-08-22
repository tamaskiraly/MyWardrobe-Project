package com.mywardrobe.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.mywardrobe.model.Authority;

@Repository("authorityRepository")
public class AuthorityRepositoryImpl implements AuthorityRepository{

	@PersistenceContext
	private EntityManager em; 
	
	
	@Override
	public Authority save(Authority authority) {
//		em.persist(authority);
//		
//		em.flush();
		em.merge(authority);
		
		return authority;
	}

}
