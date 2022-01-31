/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.pojos;

/**
 *
 * @author rounak
 */
public class Orders {
    private int orderId;
    private String name;
    private String address;
    private String phoneNo;
    private double totalPrice;
    private String users_emailId;
    private String servicetype_type;
    private int services_serviceId;

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the phoneNo
     */
    public String getPhoneNo() {
        return phoneNo;
    }

    /**
     * @param phoneNo the phoneNo to set
     */
    public void setPhoneNo(String phoneNo) {
        this.phoneNo = phoneNo;
    }

    /**
     * @return the totalPrice
     */
    public double getTotalPrice() {
        return totalPrice;
    }

    /**
     * @param totalPrice the totalPrice to set
     */
    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    /**
     * @return the orderId
     */
    public int getOrderId() {
        return orderId;
    }

    /**
     * @param orderId the orderId to set
     */
    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    /**
     * @return the users_emailId
     */
    public String getUsers_emailId() {
        return users_emailId;
    }

    /**
     * @param users_emailId the users_emailId to set
     */
    public void setUsers_emailId(String users_emailId) {
        this.users_emailId = users_emailId;
    }

    /**
     * @return the servicetype_type
     */
    public String getServicetype_type() {
        return servicetype_type;
    }

    /**
     * @param servicetype_type the servicetype_type to set
     */
    public void setServicetype_type(String servicetype_type) {
        this.servicetype_type = servicetype_type;
    }

    /**
     * @return the services_serviceId
     */
    public int getServices_serviceId() {
        return services_serviceId;
    }

    /**
     * @param services_serviceId the services_serviceId to set
     */
    public void setServices_serviceId(int services_serviceId) {
        this.services_serviceId = services_serviceId;
    }
    
    
}
