package kr.trip.mapper;

import java.util.List;

import kr.trip.domain.AuthVO;
import kr.trip.domain.MemberVO;


import org.apache.ibatis.annotations.Param;

public interface MemberMapper {
	
	public MemberVO read(String member_email);
	
	public void insert(MemberVO member);
	
	public void insertAuth(AuthVO auth);
	
	public boolean selectId(String id);
	
	public List<String> findId(@Param("name") String name,@Param("phone") String phone);
	
	 public int update(MemberVO member);
	 
	 public void deleteMember(String member_email);
	 
	 public List<MemberVO>getListMember();
	/*
	 *
	 * 
	 * public int delete(String member_email);
	 * 
	 * public int getAmount();
	 */
}