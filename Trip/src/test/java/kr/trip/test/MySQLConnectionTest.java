package kr.trip.test;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MySQLConnectionTest {
	
	@Inject
	private DataSource ds;
	
	@Test
	public void testConnection()throws Exception{
		try(Connection con = ds.getConnection()){
			
			System.out.println("커넥션 출력: " + con);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
