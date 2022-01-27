/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.services;

import com.exavalu.OSBS.core.ConnectionManager;
import com.exavalu.OSBS.pojos.City;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author AKSHAY
 */
public class UserService {

    public int registerUser(String emailId, String otp) {
        int i = 0;
        return i;
    }

    public int sendMail(String to, String otp) {
        int i = 0;
        String from = "urbanwareservice@gmail.com";
        String password = "exavalu@123";
        String subject = "OTP For Login";
        String msg = otp;

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
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));

            ServletActionContext.getRequest().setAttribute("otp", msg);
            ServletActionContext.getRequest().setAttribute("email", to);
            // add the Subject of email
            message.setSubject(subject);

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

    public List reportPinCode(String cityName) throws SQLException, Exception {
        System.out.println(cityName);
        ResultSet rs = null;
        Connection con = null;
        List<City> pinCodeList = new ArrayList<>();
        try {
            String sql = "SELECT pinCode FROM cities WHERE cityName=?";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, cityName);
            rs = ps.executeQuery();
            while (rs.next()) {

                City city = new City();
                city.setPinCode(rs.getInt("pinCode"));
                //city.setCityName(rs.getString("cityName"));

                pinCodeList.add(city);
            }
            return pinCodeList;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
}
