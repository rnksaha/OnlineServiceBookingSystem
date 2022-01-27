/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.actions;

import com.exavalu.OSBS.pojos.City;
import com.exavalu.OSBS.pojos.User;
import com.exavalu.OSBS.services.UserService;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author AKSHAY
 */
public class UserAction extends ActionSupport implements SessionAware {

    private String emailId;
    private String otp;
    private boolean status;
    private String generatedOTP;

    private String msg = "";
    private User user = new User();
    private int ctr = 0;
    private UserService userService = new UserService();

    private String receiverEmail;

    private List<City> pinCodeList = null;
    private boolean noData = false;
    private String cityName;
    private SessionMap<String, Object> sessionMap;

    @Override
    public void setSession(Map<String, Object> map) {
        sessionMap = (SessionMap) map;
    }

    public String otpRequest() throws Exception {

        setUserService(new UserService());

        setGeneratedOTP(getUserService().generateOTP());
        setReceiverEmail(getEmailId());

        sessionMap.put("otp", getGeneratedOTP());
        sessionMap.put("email", getReceiverEmail());
        getUserService().sendMail(getReceiverEmail(), getGeneratedOTP());

        return "SUCCESS";
    }

    public String userLogin() throws Exception {

        setGeneratedOTP((String) sessionMap.get("otp"));
        setReceiverEmail((String) sessionMap.get("email"));

        try {
            if (getGeneratedOTP().equals(getOtp()) && (getOtp() != null) && getEmailId().equals(getReceiverEmail()) && (getEmailId() != null)) {
                User user = getUserService().fetchUserDetails(getEmailId());
                if (user.getRoleId() == '1') {
                    return "LOGIN";
                } else {
                    int i = getUserService().registerUser(getEmailId());
                    if (i == 0) {
                        return "LOGINERROR";
                    } else {
                        return "LOGIN";
                    }
                }
            } else {
                sessionMap.invalidate();
                return "LOGINERROR";
            }

        } catch (Exception e) {
            e.printStackTrace();
            sessionMap.invalidate();
            return "LOGINERROR";
        }
    }

    public String getPinCodes() throws Exception {
        setUserService(new UserService());
        try {
            setPinCodeList(new ArrayList<>());
            setPinCodeList(getUserService().reportPinCode(getCityName()));

            if (!pinCodeList.isEmpty()) {
                setNoData(false);
                System.out.println("Pin Codes retrieved = " + getPinCodeList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "PINCODES";
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
     * @return the pinCodeList
     */
    public List<City> getPinCodeList() {
        return pinCodeList;
    }

    /**
     * @param pinCodeList the pinCodeList to set
     */
    public void setPinCodeList(List<City> pinCodeList) {
        this.pinCodeList = pinCodeList;
    }

    /**
     * @return the noData
     */
    public boolean isNoData() {
        return noData;
    }

    /**
     * @param noData the noData to set
     */
    public void setNoData(boolean noData) {
        this.noData = noData;
    }

    /**
     * @return the cityName
     */
    public String getCityName() {
        return cityName;
    }

    /**
     * @param cityName the cityName to set
     */
    public void setCityName(String cityName) {
        this.cityName = cityName;
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
     * @return the generatedOTP
     */
    public String getGeneratedOTP() {
        return generatedOTP;
    }

    /**
     * @param generatedOTP the generatedOTP to set
     */
    public void setGeneratedOTP(String generatedOTP) {
        this.generatedOTP = generatedOTP;
    }
}
