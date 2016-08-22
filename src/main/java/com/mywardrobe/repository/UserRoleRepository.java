package com.mywardrobe.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.mywardrobe.model.UserRole;

@Repository("userRoleRepository")
public interface UserRoleRepository extends JpaRepository<UserRole, Long>{

}
