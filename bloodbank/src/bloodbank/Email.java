package bloodbank;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class Email 
{
	final String senderEmailID = "your_email@gmail.com"; 	// sender's email addres
	final String senderPassword = "your_password";		// sender's password
 	final String emailSMTPserver = "smtp.gmail.com";
	final String emailServerPort = "465";
	
	public void sendMail(String to,String subject,String message)
	{ 
		Properties props = new Properties();
		props.put("mail.smtp.user",senderEmailID);
		props.put("mail.smtp.host", emailSMTPserver);
		props.put("mail.smtp.port", emailServerPort);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.socketFactory.port", emailServerPort);
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.socketFactory.fallback", "false");
		SecurityManager security = System.getSecurityManager();
		try
		{
			Authenticator auth = new SMTPAuthenticator();
			Session session = Session.getInstance(props, auth);
			MimeMessage msg = new MimeMessage(session);
			msg.setText(message);
			msg.setSubject(subject);
			msg.setFrom(new InternetAddress(senderEmailID,"People's Blood Bank"));
			msg.addRecipient(Message.RecipientType.TO,
			new InternetAddress(to));
			Transport.send(msg);
		} 
		catch (Exception mex)
		{
			mex.printStackTrace();
		} 
	}
	public class SMTPAuthenticator extends javax.mail.Authenticator
	{
		public PasswordAuthentication getPasswordAuthentication()
		{
			return new PasswordAuthentication(senderEmailID, senderPassword);
		}
	} 
}
