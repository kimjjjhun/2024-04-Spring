package kr.com.ezen;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MainClass {

	public static void main(String[] args) {
		
		try{
			
		
		String resource = "kr/com/ezen/mybatis-config.xml";
		InputStream inputStream = Resources.getResourceAsStream(resource);
		SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		
		SqlSession session = sqlSessionFactory.openSession(true);
		
		MapperInterface mapper = session.getMapper(MapperInterface.class);
		
		MemberVO vo = new MemberVO();
		
		vo.setId(2);
		vo.setName("정훈이얌2");
		vo.setPhone("010-1111-1111");
		vo.setAddress("수원시");
		
		/* mapper.insertMember(vo); 삽입,수정,삭제*/   
		/* vo = mapper.selectMember(2);  값 반환*/
		
		List<MemberVO> list = mapper.selectMemberAll();
		
		for(MemberVO v2 : list)
		System.out.println(v2);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
