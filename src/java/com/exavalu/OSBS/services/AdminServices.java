/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.services;

import com.exavalu.OSBS.core.ConnectionManager;
import com.exavalu.OSBS.pojos.City;
import com.exavalu.OSBS.pojos.Feedback;
import com.exavalu.OSBS.pojos.Orders;
import com.exavalu.OSBS.pojos.Service;
import com.exavalu.OSBS.pojos.ServiceType;
import com.exavalu.OSBS.pojos.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sommo
 */
public class AdminServices {

    public int registerCity(int pinCode, String cityName) throws Exception {
        int i = 0;
        try (Connection con = ConnectionManager.getConnection()) {
            String sql = "INSERT INTO cities VALUES (?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, pinCode);
            ps.setString(2, cityName);
            ps.setInt(3, 1);
            System.out.println("SQL for insert=" + ps);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return i;
        }
    }
    
    public int disablePin(int pinCode) throws Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE cities SET status = 0 WHERE pinCode = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, pinCode);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    
    public int enablePin(int pinCode) throws Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE cities SET status = 1 WHERE pinCode = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, pinCode);
            i = ps.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    
    public List reportCity() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<City> cityList = new ArrayList<>();
        try {
            String sql = "SELECT pinCode, cityName, status FROM cities";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                City city = new City();
                city.setPinCode(rs.getInt("pinCode"));
                city.setCityName(rs.getString("cityName"));
                city.setStatus(rs.getInt("status"));
                cityList.add(city);
            }
            return cityList;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public List reportOrders() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Orders> orderList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM orders";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Orders order = new Orders();
                order.setOrderId(rs.getInt("orderId"));
                order.setName(rs.getString("name"));
                order.setAddress(rs.getString("address"));
                order.setPhoneNo(rs.getString("phoneNo"));
                order.setTotalPrice(rs.getDouble("totalPrice"));
                order.setUsers_emailId(rs.getString("users_emailId"));
                order.setServicetype_type(rs.getString("servicetype_type"));
//                order.setServices_serviceId(rs.getInt("services_serviceId"));

                orderList.add(order);
            }
            return orderList;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int registerServiceType(int services_serviceId, String type, double price) throws Exception {
        int i = 0;
        try (Connection con = ConnectionManager.getConnection()) {
            String sql = "INSERT INTO servicetype VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, type);
            ps.setDouble(2, price);
            ps.setInt(3, 1);
            ps.setInt(4, services_serviceId);
            System.out.println("SQL for insert=" + ps);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return i;
        }
    }

    public int deleteServiceType(String type) throws Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE servicetype SET status = 0 WHERE type = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, type);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public List reportServiceType() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<ServiceType> serviceTypeList = new ArrayList<>();
        try {
            String sql = "SELECT type, price, status, services_serviceId FROM servicetype";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                ServiceType serviceType = new ServiceType();
                serviceType.setType(rs.getString("type"));
                serviceType.setPrice(rs.getDouble("price"));
                serviceType.setStatus(rs.getInt("status"));
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

    public ServiceType fetchServiceTypeDetails(String type) throws SQLException, Exception {
        System.out.println(type);
        ResultSet rs = null;
        Connection con = null;
        ServiceType serviceType = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "SELECT type, price, status, services_serviceId FROM servicetype WHERE type=?";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("type = " + type);
            ps.setString(1, type);
            System.out.println("Select SQL = " + ps);

            rs = ps.executeQuery();
            if (rs.next()) {
                serviceType = new ServiceType();
                serviceType.setType(rs.getString("type"));
                serviceType.setPrice(rs.getDouble("price"));
                serviceType.setStatus(rs.getInt("status"));
                serviceType.setServices_serviceId(rs.getInt("services_serviceId"));

            }
            return serviceType;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int updateServiceTypeDetails(int services_serviceId, String type, double price, int status) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE servicetype SET price = ?, status = ?, services_serviceId = ? WHERE type = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setDouble(1, price);
            ps.setInt(2, status);
            ps.setInt(3, services_serviceId);
            ps.setString(4, type);
            System.out.println("Select SQL = " + ps);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public List reportUser() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<User> userList = new ArrayList<>();
        try {
            String sql = "SELECT emailId, roleId, status FROM users";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                User user = new User();
                user.setEmailId(rs.getString("emailId"));
                user.setRoleId(rs.getInt("roleId"));
                user.setStatus(rs.getInt("status"));
                
                userList.add(user);
            }
            return userList;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int deleteUserDetails(String emailId) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE users SET status = 0 WHERE emailId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailId);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    
    public int enableUserDetails(String emailId) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE users SET status = 1 WHERE emailId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailId);
            i = ps.executeUpdate();
            return i;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    
    public User fetchRoleId(String emailId) throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        User user = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "SELECT roleId FROM users WHERE emailId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, emailId);
            System.out.println("Select SQL = " + ps);

            rs = ps.executeQuery();
            if (rs.next()) {
                user = new User();
                user.setRoleId(rs.getInt("roleId"));

            }
            return user;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int registerService(String serviceName, int pinCode) throws Exception {
        int i = 0;
        try (Connection con = ConnectionManager.getConnection()) {
            String sql = "INSERT INTO services (serviceName, pinCode, status) VALUES (?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, serviceName);
            ps.setInt(2, pinCode);
            ps.setInt(3, 1);
            System.out.println("SQL for insert=" + ps);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return i;
        }
    }

    public List reportService() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Service> serviceList = new ArrayList<>();
        try {
            String sql = "SELECT serviceId, serviceName, pinCode, status FROM services";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Service service = new Service();
                service.setServiceId(rs.getInt("serviceId"));
                service.setServiceName(rs.getString("serviceName"));
                service.setPinCode(rs.getInt("pinCode"));
                service.setStatus(rs.getInt("status"));
                
                serviceList.add(service);
            }
            return serviceList;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int deleteService(int serviceId) throws Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE services SET status = 0 WHERE serviceId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, serviceId);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public Service fetchServiceDetails(int serviceId) throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        Service service = null;
        try {
            con = ConnectionManager.getConnection();
            String sql = "SELECT serviceName, pinCode, status, serviceId FROM services WHERE serviceId=?";
            PreparedStatement ps = con.prepareStatement(sql);
            System.out.println("serviceId = " + serviceId);
            ps.setInt(1, serviceId);
            System.out.println("Select SQL = " + ps);

            rs = ps.executeQuery();
            if (rs.next()) {
                service = new Service();
                service.setServiceName(rs.getString("serviceName"));
                service.setPinCode(rs.getInt("pinCode"));
                service.setStatus(rs.getInt("status"));
                service.setServiceId(rs.getInt("serviceId"));

            }
            return service;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }

    public int updateServiceDetails(String serviceName, int pinCode, int status, int serviceId) throws SQLException, Exception {
        Connection con = ConnectionManager.getConnection();
        int i = 0;
        try {
            String sql = "UPDATE services SET serviceName = ?, pinCode = ?, status = ? WHERE serviceId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ps.setString(1, serviceName);
            ps.setInt(2, pinCode);
            ps.setInt(3, status);
            ps.setInt(4, serviceId);
            System.out.println("Select SQL = " + ps);
            i = ps.executeUpdate();
            return i;
        } catch (SQLException e) {
            return 0;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
    //Feedback List Show 
    public List reportFeedback() throws SQLException, Exception {
        ResultSet rs = null;
        Connection con = null;
        List<Feedback> feedbackList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM feedback";
            con = ConnectionManager.getConnection();
            System.out.println("Connection is " + con);
            PreparedStatement ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

                Feedback feedback = new Feedback();
                feedback.setFeedbackId(rs.getInt("feedbackId"));
                feedback.setFeedback(rs.getString("feedback"));
                feedback.setUsers_emalId(rs.getString("users_emailId"));
                feedbackList.add(feedback);
            }
            return feedbackList;
        } catch (SQLException e) {
            return null;
        } finally {
            if (con != null) {
                con.close();
            }
        }
    }
}
