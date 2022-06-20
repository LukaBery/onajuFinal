package com.myspring.Onaju.common.interceptor;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.s_member.S_memberVO;

public class LoginInterceptor extends  HandlerInterceptorAdapter{
	 @Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		request.setCharacterEncoding("utf-8");
			response.setContentType("text/html; charset=UTF-8");
			try {
			  
			String viewName = getViewName(request);
			request.setAttribute("viewName", viewName);
		
			  System.out.println("viewName : "+viewName); 
			  HttpSession session = request.getSession(); // login처리를 담당하는 사용자 정보를 담고 있는 객체를 가져옴 Object obj =
			  String isLogOn = (String) session.getAttribute("isLogOn");
			  MemberVO memberVO = (MemberVO) session.getAttribute("memberInfo");
			  MemberVO nonmemberVO = (MemberVO) session.getAttribute("nonmemberInfo");
			  S_memberVO smember = (S_memberVO) session.getAttribute("sMember");
				if (isLogOn == null) { // 로그인이 안되어 있는 상태임으로 로그인 폼으로 다시 돌려보냄(redirect)

					PrintWriter printwriter = response.getWriter();

					printwriter.print("<script>alert('로그인이 필요한 서비스입니다.');" + "location.href='"
							+ request.getContextPath() + "/member/loginForm.do';</script>");

					printwriter.flush();
					printwriter.close();

					return false; // 더이상 컨트롤러 요청으로 가지 않도록false로 반환함
				} else if (memberVO == null && nonmemberVO == null && smember == null) {
					PrintWriter printwriter = response.getWriter();

					printwriter.print("<script>alert('로그인이 필요한 서비스입니다.');" + "location.href='"
							+ request.getContextPath() + "/member/loginForm.do';</script>");

					printwriter.flush();
					printwriter.close();
				} else {
					return true;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		   return true;
	   } 

	   @Override
	   public void postHandle(HttpServletRequest request, HttpServletResponse response,
	                           Object handler, ModelAndView modelAndView) throws Exception {
		  
	   }

	   @Override
	   public void afterCompletion(HttpServletRequest request, HttpServletResponse response,
	                                    Object handler, Exception ex)    throws  Exception {
	   }
	   
	   private String getViewName(HttpServletRequest request) throws Exception {
			String contextPath = request.getContextPath(); //   /bookshop01 출력 
			System.out.println("contextPath : " + contextPath);
			String uri = (String) request.getAttribute("javax.servlet.include.request_uri");
			//변수 선언 밑에서 getRequestURI() 활용하기위해서 선언만 해주는 것일 뿐 이때는 null값이 나옴.
			
			if (uri == null || uri.trim().equals("")) {
				uri = request.getRequestURI(); //  /bookshop01/member/loginForm.do가 출력됨 
				System.out.println("uri :"+ uri);
			}

			int begin = 0;
			if (!((contextPath == null) || ("".equals(contextPath)))) {
				begin = contextPath.length(); //   /bookshop01의 길이를 begin에 넣어줌
			}

			int end;
			if (uri.indexOf(";") != -1) {  // uri중에 ;가 없으면 -1로 변환, 없으므로 else  
				end = uri.indexOf(";");
			} else if (uri.indexOf("?") != -1) { // uri중에 ?가 없으면 -1로 변환, 없으므로 else
				end = uri.indexOf("?");
			} else {
				end = uri.length();   // uri의 길이를 end에 넣어줌 
			}

			String fileName = uri.substring(begin, end);  // begin(11)과 end를 인덱스로 출력한 것임  
			System.out.println("fileName :"+ fileName); //    /member/loginForm.do 출력 
			if (fileName.indexOf(".") != -1) {   // fileName중에 .가 있으면 if 구문 안으로 들어감
				fileName = fileName.substring(0, fileName.lastIndexOf("."));
				// substring의 0인덱스부터 마지막 .까지 잘라냄 /member/loginForm가 출력 
			}
			if (fileName.lastIndexOf("/") != -1) { // fileName중에 .가 있으면 if 구문 안으로 들어감
				fileName = fileName.substring(fileName.lastIndexOf("/",1), fileName.length());
				// fileName의 /의 1인덱스 /(1인덱스)member/(0인덱스)loginForm를 잘라냄.
			}
			return fileName;//    최종 /member/loginForm 출력
		}
	}
