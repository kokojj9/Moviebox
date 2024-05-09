package com.kh.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {

	/*
	 * 기존 JDBC 템플릿
	 * 
	 * public static Connection getConnection(){
	 * 
	 * driver.properties를 읽어서
	 * DB와 접속된 Connection객체를 생성해서 반환
	 * 
	 * }
	 * 
	 */

	// MyBatis
	
	public static SqlSession getSqlSession() {
		SqlSession sqlSession = null;
		
		// mybatis-config.xml파일 읽어서
		// 해당DB의 접속된 sqlSession객체를 생성할 것
		
		String resource = "/resources/mybatis-config.xml";
		//					/는 소스폴더의 최상위를 의미(classes)
		
		try {
			InputStream stream = Resources.getResourceAsStream(resource);
			// 1단계 : new SqlSessionFactoryBuilder() : SqlSessionFactoryBuilder객체 생성
			// 2단계 : .build(steam)
			// Stream으로부터 mybatis-config.xml파일을 읽어오면서 SqlSessionFactory객체 생성
			// 3단계 : .openSession() : SqlSession객체 생성 -> false 트랜잭션 처리 시 자동 commit안하겠음!!
			// 트랜잭션을 개발자가 직접 관리하겠다!!
			
			sqlSession = new SqlSessionFactoryBuilder().build(stream).openSession(false);
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return sqlSession;
	}
	
	
	
	
	
	
	
}
