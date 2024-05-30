package org.zerock.domain;

import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.Data;

@Data
public class MemberVO implements UserDetails{
	
	private String userid, userpw, name;
	private boolean enabled;
	private Date regDate, updateDate;
	private List<AuthVO> authList;
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		authList.stream().map(auth-> new SimpleGrantedAuthority(auth.getAuth()))
		.collect(Collectors.toList());
		
		return null;
	}
	@Override
	public String getPassword() {
		return userpw;
	}
	@Override
	public String getUsername() {
		return name;
	}
	@Override
	public boolean isAccountNonExpired() {
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	@Override
	public boolean isEnabled() {
		return true;
	}
	
}
