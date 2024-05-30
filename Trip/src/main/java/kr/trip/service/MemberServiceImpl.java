package kr.trip.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import kr.trip.domain.AuthVO;
import kr.trip.domain.MemberVO;
import kr.trip.mapper.MemberMapper;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class MemberServiceImpl implements MemberService{

	@Autowired
	private MemberMapper memberMapper;
	
	@Override
	public void register(MemberVO member) {
		
		memberMapper.insert(member);
	}

	@Override
	public void insertAuth(AuthVO auth) {
		memberMapper.insertAuth(auth);
	}

	@Override
	public boolean selectId(String id) {
		return memberMapper.selectId(id);
	}

	@Override
	public List<String> findId(String name, String phone) {
		System.out.println("----------findId-----------------");
		System.out.println(name);
		System.out.println(phone.trim());
		
		List<String> str = memberMapper.findId(name, phone.trim());
		System.out.println(str);
		return str;
	}

	@Override
	public boolean update(MemberVO member) {
		return memberMapper.update(member)==1;
	}

	@Override
	public MemberVO read(String member_email) {
		return memberMapper.read(member_email);
	}
	
	

}