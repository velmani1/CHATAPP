package com.BagStore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("registrationEmail")

public class SendMail {
	
	
	 
		@Autowired
		MailSender mailSender; // MailSender interface defines a strategy
											// for sending simple mails
	 
		public void readyToSendEmail(String toAddress,String fromAddress,String subject,String msgBody) {
	 
			SimpleMailMessage sendMsg = new SimpleMailMessage();
			System.out.println("ENTERING IN METHOD");
			sendMsg.setFrom(fromAddress);
			sendMsg.setTo(toAddress);
			sendMsg.setSubject(subject);
			sendMsg.setText(msgBody);
			mailSender.send(sendMsg);
		}
	}

