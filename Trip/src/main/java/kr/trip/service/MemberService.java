package kr.trip.service;

import java.util.List;

import kr.trip.domain.AuthVO;
import kr.trip.domain.MemberVO;

public interface MemberService {

	public MemberVO read(String member_email);
	
	public void register(MemberVO member);
	
	public void insertAuth(AuthVO auth);
	
	public boolean selectId(String id);
	
	public List<String> findId(String name, String phone);
	
	public boolean update(MemberVO member);
}