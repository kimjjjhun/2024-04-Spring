package org.zerock.persistence;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

public class JDBCTest {
	static { //먼저 시작 객체 생성 전 이미 생성됨
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Test
	public void testConnection() {
		try {
			Connection con = DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe",
					"book_ex",
					"book_ex"
					);
			
			System.out.println("con >>" + con);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	

}
