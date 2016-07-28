package com.aem.utill;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.aem.model.AddEmployee;

public class SendMail {
	
public static boolean sendmail(AddEmployee addEmp){
		
		
		  
		  
		  //Get the session object  
		  Properties props = new Properties();  
		  props.put("mail.smtp.host", "smtp.gmail.com");  
		  props.put("mail.smtp.socketFactory.port", "465");  
		  props.put("mail.smtp.socketFactory.class",  
		            "javax.net.ssl.SSLSocketFactory");  
		  props.put("mail.smtp.auth", "true");  
		  props.put("mail.smtp.port", "465");  
		   
		  Session session = Session.getDefaultInstance(props,  new javax.mail.Authenticator() { protected PasswordAuthentication getPasswordAuthentication() {  
		   return new PasswordAuthentication("shweta.scsit@gmail.com","shwetajoshi");}});
	try{
			   //InetAddress ip=InetAddress.getLocalHost();	
			   
			   MimeMessage message = new MimeMessage(session);  
			   message.setFrom(new InternetAddress("shweta.scsit@gmail.com"));//change accordingly  
			   message.addRecipient(Message.RecipientType.TO,new InternetAddress(addEmp.getEmail()));  
			   message.setSubject("");  
			   message.setText("Hello "+addEmp.getFirstName()+"\n"+"your company ID and Password is :"+"\n\n\n"+"UserName :"+addEmp.getEmail()+"\n"+"Password :"+addEmp.getPassword()+"\n\n\n"+"Thanking You"+"\n"+"Regards :"+"\n"+"Shweta Joshi"+"\n"+"Aartek Software Solution");  
			     
			   //send message  
			   Transport.send(message); 
			   
			   System.out.println("mail sent");
	}
	catch(Exception e)
	{
		System.out.println("sorry mail not send");
	}
			
		return true;
		}
}
