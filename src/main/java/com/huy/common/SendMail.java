package com.huy.common;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {
	private static Session session;
	
	public SendMail() {
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
         

		session = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("suppermagician@gmail.com","m@1kh@1!^@");
				}
			});
	}
	
	public void SendTo(String user, String email){
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("from-email@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(email));
			
			
			message.setSubject("Notify: booking product successfully");
			message.setText("Dear " + user + "," +
					"\n\n No spam to my email, please!\n You booking product successfully!");
			
			Transport.send(message);
		}
		catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
