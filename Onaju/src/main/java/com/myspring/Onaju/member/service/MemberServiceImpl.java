package com.myspring.Onaju.member.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.myspring.Onaju.host.goods.vo.HostImageFileVO;
import com.myspring.Onaju.member.dao.MemberDAO;
import com.myspring.Onaju.member.vo.MemberVO;
import com.myspring.Onaju.s_member.S_memberDAO;
import com.myspring.Onaju.s_member.S_memberVO;


@Service("memberService")
public class MemberServiceImpl implements MemberService{
	@Autowired
	private MemberDAO memberDAO;
	@Autowired
	private S_memberDAO s_memberDAO;
	
	@Override
	public MemberVO login(Map loginMap) throws Exception{
		
	
		return memberDAO.login(loginMap);
	}

	@Override
	public void addMember(MemberVO memberVO) throws Exception{
		memberDAO.insertNewMember(memberVO);
	}

	@Override
	public String overlapped(String id) throws Exception{
		return memberDAO.selectOverlappedID(id);
	}
	@Override
	public MemberVO idFind(Map loginMap) throws Exception{
		return memberDAO.idFind(loginMap);
	
	}

	@Override
	public MemberVO pwdFind(Map loginMap) throws Exception{
		return memberDAO.pwdFind(loginMap);
	
	}

	@Override
	public MemberVO pwdChange(Map loginMap) throws Exception{
		return memberDAO.pwdChange(loginMap);
	
	}
	@Override
	public String getAccessToken (String auth_code) throws Exception{
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST ????????? ?????? ???????????? false??? setDoOutput??? true???
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST ????????? ????????? ???????????? ???????????? ???????????? ?????? ??????
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=2520c8e17541628f34b1475ac21d1840"); //????????? ???????????? key
			sb.append("&redirect_uri=http://localhost:8080/Onaju/member/kakaoLogin"); // ????????? ????????? ??????
            
			sb.append("&code=" + auth_code);
			bw.write(sb.toString());
			bw.flush();
            
			// ?????? ????????? 200????????? ??????
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
            
			// ????????? ?????? ?????? JSON????????? Response ????????? ????????????
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
            
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
            
			// Gson ?????????????????? ????????? ???????????? JSON?????? ?????? ??????
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
	
	
	public S_memberVO getUserInfo(String access_Token) {

		// ???????????? ????????????????????? ?????? ????????? ?????? ??? ????????? HashMap???????????? ??????
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			// ????????? ????????? Header??? ????????? ??????
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			
			 
			String kakaomail = email;
		        int idx = kakaomail.indexOf("@"); 
		        String mail1 = kakaomail.substring(0, idx);
		        String mail2 = kakaomail.substring(idx+1);
		      
		        System.out.println("mail1 : "+mail1);
		        System.out.println("mail2 : "+mail2);
		        
				userInfo.put("nickname", nickname);
				userInfo.put("email1", mail1);
				userInfo.put("email2", mail2);
				
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		S_memberVO smember = s_memberDAO.findkakao(userInfo);
		
		System.out.println("????????? ????????? ??????????????....:" + smember);
		if(smember==null) {
		
			s_memberDAO.kakaoinsert(userInfo);
			return s_memberDAO.findkakao(userInfo);
			
		} else {
			return smember;
		}
	}
	
	public void kakaoLogout(String access_Token) {
        String reqURL = "https://kapi.kakao.com/v1/user/logout";
        try {
            URL url = new URL(reqURL);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("POST");
            conn.setRequestProperty("Authorization", "Bearer " + access_Token);
            conn.setDoOutput(true);
            
            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=2520c8e17541628f34b1475ac21d1840"); //????????? ???????????? key
			sb.append("&redirect_uri=http://localhost:8080/Onaju/member/kakaoLogout"); // ????????? ????????? ??????
            
			sb.append("&code=" + access_Token);
			bw.write(sb.toString());
			bw.flush();
			
            int responseCode = conn.getResponseCode();
            System.out.println("responseCode : " + responseCode);

            BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

            String result = "";
            String line = "";

            while ((line = br.readLine()) != null) {
                result += line;
            }
            System.out.println("response body : " + result);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

	@Override
	public void addNewUserProfile(Map newGoodsMap) throws Exception{
		String u_id = (String) newGoodsMap.get("u_id");
		 ArrayList<MemberVO> imageFileList = (ArrayList) newGoodsMap.get("imageFileList"); 
		  for (MemberVO imageFileVO : imageFileList) { imageFileVO.setU_id(u_id); }
		
		memberDAO.insertUserProfile(imageFileList);
	}
	
	@Override
	public S_memberVO naverLogin(S_memberVO naver) throws Exception{

		String name=naver.getS_name();
		String mail1=naver.getS_email1();
		String mail2=naver.getS_email2();
		
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		userInfo.put("name", name);
		userInfo.put("email1", mail1);
		userInfo.put("email2", mail2);
		S_memberVO smember = s_memberDAO.findnaver(userInfo);
		
		System.out.println("????????? ????????? ??????????????....:" + smember);
		if(smember==null) {
		
			s_memberDAO.naverinsert(userInfo);
			return s_memberDAO.findnaver(userInfo);
			
		} else {
			return smember;
		}
		
	}

}