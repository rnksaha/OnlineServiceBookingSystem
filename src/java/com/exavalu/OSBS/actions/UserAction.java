/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.actions;

import com.exavalu.OSBS.pojos.User;
import com.exavalu.OSBS.services.UserService;
import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author AKSHAY
 */
public class UserAction extends ActionSupport {
    
    private String emailId;
    private String otp;
    private boolean status;
    
    private String msg = "";
    private User user = new User();
    private int ctr = 0;
    private UserService userService = new UserService();
    
    private String senderEmail;
    private String senderPassword;
    private String receiverEmail;
    private String subject;
    private String message;
    private int resp = 0;
    
    public String otpRequest() throws Exception {
        setUserService(new UserService());
        setSenderEmail("urbanwareservice@gmail.com");
        setSenderPassword("exavalu@123");
        setReceiverEmail(getEmailId());
        
        setResp(getUserService().sendMail(getSenderEmail(), getSenderPassword(), getReceiverEmail(), getSubject(), getMessage()));
        setOtp(getOtp());
        setEmailId(getEmailId());
        
        if (getResp() == 1) {
            return "SUCCESS";
        } else {
            return "ERROR";
        }
        
    }
    
    public String userLogin() throws Exception {
        
        try {
            
        } catch (Exception e) {
            e.printStackTrace();
            return "LOGINERROR";
        }
        return "LOGIN";
        
    }

    /**
     * @return the otp
     */
    public String getOtp() {
        return otp;
    }

    /**
     * @param otp the otp to set
     */
    public void setOtp(String otp) {
        this.otp = otp;
    }

    /**
     * @return the status
     */
    public boolean isStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(boolean status) {
        this.status = status;
    }

    /**
     * @return the msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * @param msg the msg to set
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }

    /**
     * @return the ctr
     */
    public int getCtr() {
        return ctr;
    }

    /**
     * @param ctr the ctr to set
     */
    public void setCtr(int ctr) {
        this.ctr = ctr;
    }

    /**
     * @return the userService
     */
    public UserService getUserService() {
        return userService;
    }

    /**
     * @param userService the userService to set
     */
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * @return the emailId
     */
    public String getEmailId() {
        return emailId;
    }

    /**
     * @param emailId the emailId to set
     */
    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }

    /**
     * @return the senderEmail
     */
    public String getSenderEmail() {
        return senderEmail;
    }

    /**
     * @param senderEmail the senderEmail to set
     */
    public void setSenderEmail(String senderEmail) {
        this.senderEmail = senderEmail;
    }

    /**
     * @return the senderPassword
     */
    public String getSenderPassword() {
        return senderPassword;
    }

    /**
     * @param senderPassword the senderPassword to set
     */
    public void setSenderPassword(String senderPassword) {
        this.senderPassword = senderPassword;
    }

    /**
     * @return the receiverEmail
     */
    public String getReceiverEmail() {
        return receiverEmail;
    }

    /**
     * @param receiverEmail the receiverEmail to set
     */
    public void setReceiverEmail(String receiverEmail) {
        this.receiverEmail = receiverEmail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

    /**
     * @return the resp
     */
    public int getResp() {
        return resp;
    }

    /**
     * @param resp the resp to set
     */
    public void setResp(int resp) {
        this.resp = resp;
    }
}
