/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.actions;

import com.exavalu.OSBS.pojos.City;
import com.exavalu.OSBS.pojos.User;
import com.exavalu.OSBS.pojos.ServiceType;
import com.exavalu.OSBS.services.UserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author AKSHAY
 */
public class UserAction extends ActionSupport implements ApplicationAware, SessionAware, Serializable {

    private static final long serialVersionUID = 1L;

    private String emailId;
    private String otp;
    private boolean status;
    private String generatedOTP;

    // Feedback Prameters
    private String feedback;

    //Orders Parameters
    private String name;
    private String address;
    private String phoneNo;
    private double totalPrice;
    private String users_emailId;
    private String servicetype_type;
    private int services_serviceId;
    private int cId;
    private String type;
    private String msg = "";
    private User user = new User();
    private int ctr = 0;
    private UserService userService = new UserService();

    private String receiverEmail;

    private List<City> pinCodeList = null;
    private boolean noData = false;
    private String cityName;
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();
    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();
    private HttpServletResponse response;

    private int serviceId;
    private List<ServiceType> serviceTypeList;

    private List<ServiceType> cartList;
    private Double total;
    private Double grandTotal;

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

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

    public String redirectPage() throws Exception {
        return "SUCCESS";
    }

    public String clearSession() throws Exception {
        sessionMap.put("cart", null);
        sessionMap.put("cartList", null);
        sessionMap.put("total", null);
        return "SUCCESS";
    }

    public String userLogin() throws Exception {

        setGeneratedOTP((String) sessionMap.get("otp"));
        setReceiverEmail((String) sessionMap.get("email"));
        try {
            if (getGeneratedOTP().equals(getOtp()) && (getOtp() != null) && getEmailId().equals(getReceiverEmail()) && (getEmailId() != null)) {

//                map.put(getEmailId() + "session", mySession.getId());
                User userInfo = getUserService().fetchUserDetails(getEmailId());
                if (userInfo.getRoleId() == 1 || userInfo.getRoleId() == 2) {
                    int roleId = userInfo.getRoleId();
                    sessionMap.put("role", roleId);
                    sessionMap.put("validuser", true);
                    sessionMap.put("user", userInfo);
                    map.put("role", roleId);
                    map.put("validUser", true);
                    map.put("user", userInfo);
                    return "LOGIN";
                } else {
                    int i = getUserService().registerUser(getEmailId());
                    if (i == 1) {
                        User newUser = getUserService().fetchUserDetails(getEmailId());
                        int roleId = newUser.getRoleId();
                        sessionMap.put("role", roleId);
                        sessionMap.put("validuser", true);
                        sessionMap.put("user", userInfo);
                        map.put("role", roleId);
                        map.put("validUser", true);
                        map.put("user", userInfo);
//                        ActionContext.getContext().getValueStack().push(map);
                        return "LOGIN";
                    } else {
                        sessionMap.invalidate();
                        return "LOGINERROR";
                    }
                }
//                    HttpServletResponse response = (HttpServletResponse) ActionContext.getContext().get(ServletActionContext.HTTP_RESPONSE);
            } else {
                sessionMap.invalidate();
                return "LOGINERROR";
            }

        } catch (Exception e) {
            sessionMap.invalidate();

            return "LOGINERROR";
        }
    }

    public String registerFeedback() throws Exception {
        setUserService(new UserService());
        try {
            setCtr(getUserService().registerFeedback(getFeedback(), getUsers_emailId()));
            if (getCtr() > 0) {
                setMsg("Feedback Registered");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
        }
        return "REGISTERFEEDBACK";
    }

    public String registerOrders() throws Exception {
        if (sessionMap.get("cartList") == null) {
            return "CARTEMPTY";
        } else {
            setUserService(new UserService());
            setTotalPrice((double) sessionMap.get("total"));
            setGrandTotal(getTotalPrice() + getTotalPrice() * 0.05);
            sessionMap.put("grandTotal", getGrandTotal());
            try {
                setCtr(getUserService().registerOrders(getName(), getAddress(), getPhoneNo(), getGrandTotal(), getUsers_emailId(), (ArrayList<ServiceType>) sessionMap.get("cart")));
                if (getCtr() > 0) {
                    getUserService().sendMail(getUsers_emailId(), "ORDER REGISTERED");
                    setMsg("Order Registered");
//                    sessionMap.put("cart", null);
//                    sessionMap.put("cartList", null);
//                    sessionMap.put("total", null);
                } else {
                    setMsg("Some error");
                }
            } catch (Exception e) {
            }
        }
        return "REGISTERORDERS";

    }

//    public static void setCookie(HttpServletResponse response, String name, String value, int period) {
//
//        try {
//
//            Cookie div = new Cookie(name, value);
//            div.setMaxAge(60 * 60 * 24 * 365); // Make the cookie last a year
//            response.addCookie(div);
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//    }
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
        }

        return "PINCODES";
    }

    public String service() throws Exception {
        UserService ob = new UserService();
        try {
            ArrayList<ServiceType> type = ob.fetchServiceDetails();
            sessionMap.put("serviceType", type);
        } catch (Exception e) {
        }

        return "SUCCESS";
    }

    public String setService() throws Exception {
        sessionMap.put("service", true);
        return "SUCCESS";
    }

    public String addToCart() throws Exception {
        int i = 0;
        Double total = 0.0;
//        ArrayList<Integer> cart = (ArrayList) sessionMap.get("cart");
        //ArrayList<ServiceType> cart = new ArrayList<>();
        if (sessionMap.get("cart") == null) {
            ArrayList<ServiceType> cart = new ArrayList<>();
            cart.add(getUserService().fetchServiceTypeDetails(getType()));
            System.out.println(cart);
            total += cart.get(i).getPrice();
            sessionMap.put("i", i);
            sessionMap.put("total", total);
            sessionMap.put("cart", cart);
            setCartList(new ArrayList<>());
            setCartList(cart);
            sessionMap.put("cartList", getCartList());
        } else {
            int k = getUserService().fetchCartDetails(getType(), (ArrayList<ServiceType>) sessionMap.get("cart"));
            if (k == 1) {
                return "CARTEXIST";
            }
            ArrayList<ServiceType> cart = (ArrayList) sessionMap.get("cart");
            cart.add(getUserService().fetchServiceTypeDetails(getType()));
            System.out.println(cart);
            total = (Double) sessionMap.get("total");
            i = (Integer) sessionMap.get("i");
            i++;
            total += cart.get(i).getPrice();
            sessionMap.put("total", total);
            sessionMap.put("cart", cart);
            sessionMap.put("i", i);
            setCartList(new ArrayList<>());
            setCartList(cart);
            sessionMap.put("cartList", getCartList());
        }

        //System.out.println(getServices_serviceId());
        //cart.add(getUserService().fetchServiceTypeDetails(getType()));
        return "CARTADDED";
    }

    public String viewCart() throws Exception {
        if (sessionMap.get("cart") == null) {
            return "CARTEMPTY";
        }
        ArrayList<ServiceType> cart = (ArrayList) sessionMap.get("cart");
        setTotal((Double) sessionMap.get("total"));
        System.out.println(total);
        try {
            setCartList(new ArrayList<>());
            setCartList(cart);

            if (!cartList.isEmpty()) {
                setNoData(false);
                System.out.println("Items in cart = " + getCartList().size());
                System.out.println("The 1st item in cart is: " + getCartList().get(0).getType());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "CART";
    }

    public String userLogout() throws Exception {

        sessionMap.invalidate();
        map.put("role", 0);
        map.put("validUser", null);
        map.put("user", null);

        return "LOGOUT";
    }

    public String salon() throws Exception {
        setUserService(new UserService());
        try {
            setServiceTypeList(new ArrayList<>());
            setServiceTypeList(getUserService().salon(getServiceId()));

            if (!serviceTypeList.isEmpty()) {
                setNoData(false);
                System.out.println("Service Types retrieved = " + getServiceTypeList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
        }
        return "SALON";
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

    /**
     * @return the feedback
     */
    public String getFeedback() {
        return feedback;
    }

    /**
     * @param feedback the feedback to set
     */
    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    /**
     * @return the response
     */
    public HttpServletResponse getResponse() {
        return response;
    }

    /**
     * @param response the response to set
     */
    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

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

    /**
     * @return the cId
     */
    public int getcId() {
        return cId;
    }

    /**
     * @param cId the cId to set
     */
    public void setcId(int cId) {
        this.cId = cId;
    }

    /**
     * @return the serviceId
     */
    public int getServiceId() {
        return serviceId;
    }

    /**
     * @param serviceId the serviceId to set
     */
    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    /**
     * @return the serviceTypeList
     */
    public List<ServiceType> getServiceTypeList() {
        return serviceTypeList;
    }

    /**
     * @param serviceTypeList the serviceTypeList to set
     */
    public void setServiceTypeList(List<ServiceType> serviceTypeList) {
        this.serviceTypeList = serviceTypeList;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the cartList
     */
    public List<ServiceType> getCartList() {
        return cartList;
    }

    /**
     * @param cartList the cartList to set
     */
    public void setCartList(List<ServiceType> cartList) {
        this.cartList = cartList;
    }

    /**
     * @return the total
     */
    public Double getTotal() {
        return total;
    }

    /**
     * @param total the total to set
     */
    public void setTotal(Double total) {
        this.total = total;
    }

    /**
     * @return the grandTotal
     */
    public Double getGrandTotal() {
        return grandTotal;
    }

    /**
     * @param grandTotal the grandTotal to set
     */
    public void setGrandTotal(Double grandTotal) {
        this.grandTotal = grandTotal;
    }
}
