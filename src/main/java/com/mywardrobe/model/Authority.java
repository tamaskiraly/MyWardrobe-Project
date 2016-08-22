package com.mywardrobe.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "authorities")
public class Authority {

	
	private String authority;
	
	@Column(name = "authority", nullable = false, length = 45)
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}

	private String role;
	private String username;
//	private User user;

	@Column(name = "username", nullable = false)
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Authority() {
	}
	
	

	

//	public Authority(User user, String role) {
//		this.user = user;
//		this.role = role;
//	}

	
	@Id
	@GeneratedValue
	@Column(name = "ROLE_ID")
	private Long id;
	
	
	
//		return this.user;
//	}

	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "username", nullable = false)
//	public User getUser() {
//		return this.user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}

	@Override
	public String toString() {
		return "Authority [authority=" + authority + ", role=" + role + ", username=" + username + ", id=" + id + "]";
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	@Column(name = "role", nullable = false, length = 45)
	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
	
