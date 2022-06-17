package com.mySpring.Onaju;

import static org.junit.Assert.assertEquals;

import java.util.HashMap;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.myspring.Onaju.member.service.MemberService;
import com.myspring.Onaju.member.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class) //이 애노테이션을 붙여줘야 스프링 테스트를 Junit으로 돌릴 수 있음.
@WebAppConfiguration //이 애너테이션을 붙이면 Controller및 web환경에 사용되는 빈들을 자동으로 생성하여 등록하게됨.
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/root-context.xml", 

        "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml",
        "file:src/main/webapp/WEB-INF/spring/mybatis-context.xml"

      })//빈 설정 파일로 사용한다는 의미.

public class TestTotal {

	@Autowired
	MemberService memberService;
	
	@Test
	public void testIdFind() throws Exception {
		Map <String,String> loginMap =new HashMap<String,String>();
		String u_name = "사용자 이름";
		String u_phone = "전화번호";
		String u_email1 = "이메일 주소1";
		String u_email2 = "이메일 주소2";
		loginMap.put("u_name", u_name);
		loginMap.put("u_phone", u_phone);
		loginMap.put("u_email1", u_email1);
		loginMap.put("u_email2", u_email2);
		
		MemberVO idFind =memberService.idFind(loginMap);
	    String u_id = idFind.getU_id();
	    
		System.out.println(u_id);
		assertEquals("대조할 사용자 이름", u_id);
	}
	
}
