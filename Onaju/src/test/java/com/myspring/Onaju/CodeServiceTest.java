package com.myspring.Onaju;

import static org.junit.Assert.assertEquals;



import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;


@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml", 
        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/mybatis-context.xml"
      })

public class CodeServiceTest {
	
	@Autowired
	public SqlSession sqlSession;
	
	
	@Test
	public void testOverlapped() throws Exception {
		final String id = "park";
		String result = sqlSession.selectOne("mapper.member.selectOverlappedID",id);
		assertEquals( false , result);
	}	
}
