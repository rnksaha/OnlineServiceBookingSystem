/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.services;

import java.util.Properties;
import java.util.Random;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author AKSHAY
 */
public class UserService {

    public int registerUser(String emailId, String otp) {
        int i = 0;
        return i;
    }

    public int sendMail(String from, String password, String to, String subject, String msg) {
        int i = 0;
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // check the authentication
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(from, password);
            }
        });

        try {

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(from));

            // recipients email address
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

            subject = "OTP for Login";
            // add the Subject of email
            message.setSubject(subject);

            String Capital_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            String Small_chars = "abcdefghijklmnopqrstuvwxyz";
            String numbers = "0123456789";
            String symbols = "!@#$%^&*_=+-/.?<>)";

            String values = Capital_chars + Small_chars
                    + numbers + symbols;

            Random rndm_method = new Random();

            char[] otp = new char[6];

            for (int j = 0; j < 6; j++) {
                otp[j] = values.charAt(rndm_method.nextInt(values.length()));
            }
            msg = new String(otp);
            // message body
            message.setText(msg);

            Transport.send(message);
            return 1;
        } catch (MessagingException e) {
            e.printStackTrace();
            return i;
        } finally {
            return i;
        }

    }
}
