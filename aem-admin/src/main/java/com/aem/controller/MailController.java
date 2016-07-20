package com.aem.controller;


import java.util.Map;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aem.model.Login;

@Controller
public class MailController
{
	
	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public String showmail(Map<String, Object> map){
		
		
		System.out.println("Admin controller show method");		
		return "mail";
		}
	
	
	
	@RequestMapping(value = "/sendmail", method = RequestMethod.POST)
	public String sendmail(Map<String, Object> map,HttpServletRequest request){
		
		String email=request.getParameter("email");
		String to=email;//change accordingly  
		  System.out.println(email);
		  //Get the session object  
		  Properties props = new Properties();  
		  props.put("mail.smtp.host", "smtp.gmail.com");  
		  props.put("mail.smtp.socketFactory.port", "465");  
		  props.put("mail.smtp.socketFactory.class",  
		            "javax.net.ssl.SSLSocketFactory");  
		  props.put("mail.smtp.auth", "true");  
		  props.put("mail.smtp.port", "465");  
		   
		  Session session = Session.getDefaultInstance(props,  new javax.mail.Authenticator() { protected PasswordAuthentication getPasswordAuthentication() {  
		   return new PasswordAuthentication("birleashish@gmail.com","jeevanlata");}});
	try{
			   //InetAddress ip=InetAddress.getLocalHost();	
			   
			   MimeMessage message = new MimeMessage(session);  
			   message.setFrom(new InternetAddress("birleashish@gmail.com"));//change accordingly  
			   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
			   message.setSubject("verify");  
			   message.setText("please click link to verify"+"<a href='http://localhost:8080/aem-admin-0.0.1-SNAPSHOT/Verify?email="+email+"'"+">"+"");  
			     
			   //send message  
			   Transport.send(message); 
			   
			   System.out.println("mail sent");
	}
	catch(Exception e)
	{
		
	}
		
		
		
		
		
		map.put("UserLogin", new Login());
		System.out.println("Admin controller show method");		
		return "adminLogin";
		}

	
	
	
}
