package kr.trip.service;

import java.util.HashMap;

import org.springframework.security.core.userdetails.UserDetails;

import kr.trip.domain.MemberVO;

public interface KakaoLoginService {

	String getAccessToken(String authorize_code) throws Throwable;

	public MemberVO getUserInfo(String access_Token) throws Throwable;
	
	public UserDetails getAuthorities(String member_email) throws Throwable;
}