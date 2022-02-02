/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.services;

import com.exavalu.OSBS.core.ConnectionManager;
import com.exavalu.OSBS.pojos.City;
import com.exavalu.OSBS.pojos.ServiceType;
import com.exavalu.OSBS.pojos.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
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

    public int registerUser(String emailId) {
        int i = 0;
        User user = new User();
        System.out.print("REGISTERING");
        user.setEmailId(emailId);
        Connection con = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "INSERT INTO users\n"
                    + "(emailId,\n"
                    + "roleId,\n"
                    + "status)\n"
                    + "VALUES\n"
                    + "(?,?,?);";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailId);
            ps.setInt(2, 2);
            ps.setInt(3, 1);
            int r = ps.executeUpdate();
            if (r > 0) {
                i = 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return i;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
        return i;
    }

    public User fetchUserDetails(String emailId) {
        User user = new User();

        Connection con = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "SELECT roleId FROM users WHERE status=1 AND emailId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                user.setEmailId(emailId);
                user.setRoleId(rs.getInt("roleId"));
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return user;
        } finally {
            if (con != null) {
                try {
                    con.close();

                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class
                            .getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public String generateOTP() {
        String values = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random rndm_method = new Random();

        char[] otp = new char[4];

        for (int j = 0; j < 4; j++) {
            otp[j] = values.charAt(rndm_method.nextInt(values.length()));
        }

        String generatedOTP = new String(otp);
        return generatedOTP;
    }

    public int sendMail(String to, String mssg) {
        int i = 0;
        String from = "urbanwareservice@gmail.com";
        String password = "exavalu@123";
        String subject = "OTP For Login";
        String msg = mssg;

        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        // check the authentication
        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
            @Override
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
            String sql = "SELECT pinCode FROM cities WHERE cityName=? AND status!=0";
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
        } catch (SQLException e) {
            e.printStackTrace();
            return pinCodeList;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    // place order insert into method
    public int registerOrders(String name, String address, String phoneNo, double grandTotal, String users_emailId, ArrayList<ServiceType> cart) throws Exception {
        int i = 0;
        Connection con = null;
        try {
            con = ConnectionManager.getConnection();
            int csize = cart.size();
            for (int k = 0; k < csize; k++) {
                String sql = "INSERT INTO orders (name,address,phoneNo,totalPrice,users_emailId,servicetype_type) VALUES (?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, address);
                ps.setString(3, phoneNo);
                ps.setDouble(4, grandTotal);
                ps.setString(5, users_emailId);
                ps.setString(6, cart.get(i).getType());
                //ps.setInt(7, services_serviceId);

                System.out.println("SQL for insert=" + ps);
                i = ps.executeUpdate();
            }
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return i;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    //Feedback insert into table method
    public int registerFeedback(String feedback, String users_emailId) throws Exception {
        int i = 0;
        Connection con = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "INSERT INTO feedback (feedback, users_emailId) VALUES (?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, feedback);
            ps.setString(2, users_emailId);
            System.out.println("SQL for insert=" + ps);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
            return i;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }
    }

    public ArrayList<ServiceType> fetchServiceDetails() throws Exception {
        ServiceType serviceType = new ServiceType();

        Connection con = null;
        int serviceId = 0;
        ArrayList<ServiceType> type = new ArrayList<ServiceType>();
        try {
            con = ConnectionManager.getConnection();
//            String sql = "SELECT serviceId FROM services WHERE serviceName = ? AND pinCode = ?";
//            PreparedStatement ps = con.prepareStatement(sql);
//            ps.setString(1, serviceName);
//            ps.setInt(2, pinCode);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                serviceId = rs.getInt("serviceId");
//            }
//            ps = null;
//            rs = null;
            String sql1 = "SELECT type,price FROM serviceType WHERE services_serviceId = ?";
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setInt(1, 3);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                serviceType.setType(rs.getString("type"));
                serviceType.setPrice(rs.getDouble("price"));

                //serviceType.setServices_serviceId(rs.getInt("services_serviceId"));
                type.add(serviceType);
            }
            return type;

        } catch (SQLException e) {
            e.printStackTrace();
            return type;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    public List<ServiceType> salon(int serviceId) throws Exception {
        ResultSet rs = null;
        Connection con = null;
        List<ServiceType> serviceTypeList = new ArrayList<>();
        try {
            String sql = "SELECT type, price, services_serviceId FROM servicetype WHERE services_serviceId=?";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, serviceId);
            rs = ps.executeQuery();
            while (rs.next()) {

                ServiceType serviceType = new ServiceType();
                serviceType.setType(rs.getString("type"));
                serviceType.setPrice(rs.getDouble("price"));
                serviceType.setServices_serviceId(rs.getInt("services_serviceId"));

                serviceTypeList.add(serviceType);
            }
            return serviceTypeList;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public ServiceType fetchServiceTypeDetails(String type) throws Exception {
        ServiceType serviceType = new ServiceType();

        Connection con = null;
//        int serviceId = 0;
//        ArrayList<ServiceType> type = new ArrayList<ServiceType>();
        try {
            con = ConnectionManager.getConnection();
            String sql1 = "SELECT type, price FROM serviceType WHERE type = ?";
            PreparedStatement ps = con.prepareStatement(sql1);
            ps.setString(1, type);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                serviceType.setType(rs.getString("type"));
                serviceType.setPrice(rs.getDouble("price"));
                //serviceType.setServices_serviceId(rs.getInt("services_serviceId"));

//                type.add(serviceType);
            }
            return serviceType;

        } catch (SQLException e) {
            e.printStackTrace();
            return serviceType;
        } finally {
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException ex) {
                    Logger.getLogger(UserService.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    public int fetchCartDetails(String type, ArrayList<ServiceType> cart) throws Exception {
        int exist = 0;
        int k = cart.size();
        for (int i = 0; i < k; i++) {
            if (cart.get(i).getType().equals(type)) {
                exist = 1;
                break;
            }
        }

        return exist;
    }

}
