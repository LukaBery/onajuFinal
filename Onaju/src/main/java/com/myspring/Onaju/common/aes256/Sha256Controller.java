package com.myspring.Onaju.common.aes256;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/login")
public class Sha256Controller {
/* @Autowired
Sha256 sha;*/
@Autowired
AES256Util aes;
@RequestMapping(method=RequestMethod.GET)
public String form() {
return "form";
}
@RequestMapping(method=RequestMethod.POST)
public String login(@RequestParam("id") String id, @RequestParam("pwd") String pwd, Model model) throws NoSuchAlgorithmException, UnsupportedEncodingException, GeneralSecurityException {
System.out.println("암호화 전 아이디 : " + id);
System.out.println("암호화 전 비밀번호 : " + pwd);
/* id = sha.encrypt(id);
pwd = sha.encrypt(pwd);*/
id = aes.encrypt(id);
pwd = aes.encrypt(pwd);
System.out.println("-----------------------------");
System.out.println("암호화 후 아이디 : " + id);
System.out.println("암호화 후 비밀번호 : " + pwd);
System.out.println("-----------------------------");
System.out.println("복호화 후 아이디 : " + aes.decrypt(id));
System.out.println("복호화 후 비밀번호 : " + aes.decrypt(pwd));
model.addAttribute("id", id);
model.addAttribute("pwd", pwd);
return "login";
}
}

