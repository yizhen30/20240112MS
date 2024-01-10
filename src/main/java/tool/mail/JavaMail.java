package tool.mail;

import java.util.Objects;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeMessage.RecipientType;

public class JavaMail {
	// ---------------------------------------------------------基本資料
		
		private String userName = "cindy651426508@gmail.com"; // 寄件者信箱
		private String password = "fvufibffihbugunr"; // 寄件者密碼
		private String customer= Objects.toString(getCustomer(), ""); // 收件者郵箱
		private String subject = Objects.toString(getSubject(), ""); // 標題
		private String txt = Objects.toString(getTxt(), ""); // 內文
		private String code1 = Objects.toString(getCode1(), ""); // 驗證碼
		
		public String getCustomer() {
			return customer;
		}
		public void setCustomer(String customer) {
			this.customer = customer;
		}
		public String getSubject() {
			return subject;
		}
		public void setSubject(String subject) {
			this.subject = subject;
		}
		public String getTxt() {
			return txt;
		}
		public void setTxt(String txt) {
			this.txt = txt;
		}
		public String getCode1() {
			return code1;
		}
		public void setCode1(String code1) {
			this.code1 = code1;
		}
		public void SendMail() {
			// ---------------------------------------------------------連線設定
			Properties prop = new Properties();

			// 設定連線為smtp
			prop.setProperty("mail.transport.protocol", "smtp");

			// host主機:smtp.gmail.com
			prop.setProperty("mail.host", "smtp.gmail.com");

			// host port:465
			prop.put("mail.smtp.port", "465");

			// 寄件者帳號需要驗證：是
			prop.put("mail.smtp.auth", "true");

			// 需要安全資料傳輸層 (SSL)：是
			prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

			// 安全資料傳輸層 (SSL) 通訊埠：465
			prop.put("mail.smtp.socketFactory.port", "465");

			// 顯示連線資訊
			prop.put("mail.debug", "true");

			// ---------------------------------------------------------驗證
			// ---------------------------------------------------------Session默認屬性設定值
			// 匿名類別
//			Session session = Session.getDefaultInstance(prop, new Authenticator() {
	//
//				@Override
//				protected PasswordAuthentication getPasswordAuthentication() {
//					return new PasswordAuthentication(userName, password);
//				}
//			});

			// class
			Auth auth = new Auth(userName, password);
			Session session = Session.getDefaultInstance(prop, auth);

			// ---------------------------------------------------------Message郵件格式
			MimeMessage message = new MimeMessage(session);

			try {


				// 寄件者
				// 匿名類別
				// message.setSender(new InternetAddress(userName));

				// class
		         message.setFrom(new InternetAddress(userName));

		         // 收件者
				 message.setRecipient(RecipientType.TO, new InternetAddress(customer));

				// 標題
		         message.setSubject(subject);

		         // 此郵件有 2 部分，正文和嵌入圖像
		         MimeMultipart multipart = new MimeMultipart("related");//註解1

		         // 第一部分（html）
		         MimeBodyPart messageBodyPart = new MimeBodyPart();
		         messageBodyPart.setContent(txt, "text/html;charset = UTF-8");
		         // 添加它
		         //multipart.addBodyPart(messageBodyPart);

		         // 第二部分（圖片）
		         //messageBodyPart = new MimeBodyPart();
		         //DataSource fds = new FileDataSource(
		            //"C:\\Users\\jackh\\Documents\\GitHub\\test.png");//圖片路徑

		         //messageBodyPart.setDataHandler(new DataHandler(fds));
		         //messageBodyPart.setHeader("Content-ID", "<image>");//註解2

		         // 將圖像添加到 multipart
		         multipart.addBodyPart(messageBodyPart);

		         // put everything together
		         message.setContent(multipart);
		         // 寄送郵件
		         Transport.send(message);

		         System.out.println("Sent message successfully....");

		      } catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}


		}

	}

	class Auth extends Authenticator {

		private String userName;
		private String password;

		public Auth(String userName, String password) {
			this.userName = userName;
			this.password = password;
		}

		@Override
		protected PasswordAuthentication getPasswordAuthentication() {
			PasswordAuthentication pa = new PasswordAuthentication(userName, password);
			return pa;
		}

	}
