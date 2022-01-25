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
public class Professionals {
    private int professionalId;
    private String professionalName;
    private String address;
    private String phoneNo;
    private int status;

    /**
     * @return the professionalId
     */
    public int getProfessionalId() {
        return professionalId;
    }

    /**
     * @param professionalId the professionalId to set
     */
    public void setProfessionalId(int professionalId) {
        this.professionalId = professionalId;
    }

    /**
     * @return the professionalName
     */
    public String getProfessionalName() {
        return professionalName;
    }

    /**
     * @param professionalName the professionalName to set
     */
    public void setProfessionalName(String professionalName) {
        this.professionalName = professionalName;
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
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }
    
}
