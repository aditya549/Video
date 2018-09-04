package servlet;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.Properties;    
import javax.mail.*; 
import javax.mail.Authenticator;
import javax.mail.internet.*;
import javax.servlet.annotation.WebServlet;
import javax.websocket.Session;


public class forgetservlet {
	    
	
	    public static void send(String from,String password,String to,String sub,String msg) throws UnsupportedEncodingException{  
	       
	    	//Get properties object
	          Properties props = new Properties();    
	          props.put("mail.smtp.host", "smtp.gmail.com");    
	          props.put("mail.smtp.socketFactory.port", "465");    
	          props.put("mail.smtp.socketFactory.class",    
	                    "javax.net.ssl.SSLSocketFactory");    
	          props.put("mail.smtp.auth", "true");    
	          props.put("mail.smtp.port", "465");    
	          //get Session   
	          javax.mail.Session session = javax.mail.Session.getDefaultInstance(props, new javax.mail.Authenticator() {    
	           protected PasswordAuthentication getPasswordAuthentication() {    
	           return new PasswordAuthentication(from,password);  
	           }    
	          });    
	          //compose message    
	          try {    
	           MimeMessage message = new MimeMessage(session);    
	           message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
	           message.setSubject(sub);    
	           message.setText(msg);
	           message.setContent(msg,"text/html");
	          message.setFrom(new InternetAddress("no_reply@aditya.com","NoRepliy-JD"));
	          message.setReplyTo(InternetAddress.parse("no_reply@emaple.com",false));
	           //send message  
	           Transport.send(message); 
	          
	          
	           System.out.println("message sent successfully");   
	          } catch (MessagingException e) {throw new RuntimeException(e);}    
	             
	    }  
	}  
    

