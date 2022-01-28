/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.actions;

import com.exavalu.OSBS.pojos.City;
import com.exavalu.OSBS.pojos.Orders;
import com.exavalu.OSBS.pojos.Service;
import com.exavalu.OSBS.pojos.ServiceType;
import com.exavalu.OSBS.pojos.User;
import com.exavalu.OSBS.services.AdminServices;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sommo
 */
public class AdminAction extends ActionSupport {

    private AdminServices adminServices = null;
    private int ctr = 0;
    private String msg = "";
    private boolean noData = false;
    private String submitType;
    
    // City Parameters
    private int pinCode;
    private String cityName;
    private List<City> cityList = null;
    
    // Order Parameters
    private List<Orders> orderList = null;
    
    // Service type Parameters
    private int services_serviceId;
    private String type;
    private double price;
    private int status;
    private List<ServiceType> serviceTypeList = null;
    
    //User Parameters
    private List<User> userList = null;
    private String emailId;
    
    // Services Parameters
    private String serviceName;
    private int serviceId;
    private List<Service> serviceList = null;
    
    public String registerCity() throws Exception {
        setAdminServices(new AdminServices());

        try {
            setCtr(getAdminServices().registerCity(getPinCode(), getCityName()));
            if (getCtr() > 0) {
                setMsg("City Registered");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REGISTERCITY";
    }
    
    public String disablePin() throws Exception {
        setAdminServices(new AdminServices());

        try {
            setCtr(getAdminServices().disablePin(getPinCode()));
            if (getCtr() > 0) {
                setMsg("Pin Code Disabled");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "DISABLEPIN";
    }
    
    public String reportCity() throws Exception {
        setAdminServices(new AdminServices());
        try {
            setCityList(new ArrayList<>());
            setCityList(getAdminServices().reportCity());

            if (!cityList.isEmpty()) {
                setNoData(false);
                System.out.println("Cities retrieved = " + getCityList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REPORTCITY";
    }
    
    public String reportOrders() throws Exception {
        setAdminServices(new AdminServices());
        try {
            setOrderList(new ArrayList<>());
            setOrderList(getAdminServices().reportOrders());

            if (!orderList.isEmpty()) {
                setNoData(false);
                System.out.println("Orders retrieved = " + getOrderList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REPORTORDERS";
    }
    
    public String registerServiceType() throws Exception {
        setAdminServices(new AdminServices());

        try {
            setCtr(getAdminServices().registerServiceType(getServices_serviceId(), getType(), getPrice()));
            if (getCtr() > 0) {
                setMsg("Service type Registered");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REGISTERSERVICETYPE";
    }
    
    public String deleteServiceType() throws Exception {
        setAdminServices(new AdminServices());

        try {
            setCtr(getAdminServices().deleteServiceType(getType()));
            if (getCtr() > 0) {
                setMsg("Service type Deleted");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "DELETESERVICETYPE";
    }
    
    public String updateServiceType() throws Exception {
        setAdminServices(new AdminServices());
        try {
            if (getSubmitType().equals("updateServiceTypedata")) {
                ServiceType serviceType = getAdminServices().fetchServiceTypeDetails(getType());
                if (serviceType != null) {
                    services_serviceId = serviceType.getServices_serviceId();
                    type = serviceType.getType();
                    price = serviceType.getPrice();
                    status = serviceType.getStatus();
                }
            } else {
                int i = getAdminServices().updateServiceTypeDetails(services_serviceId, type, price, status);
                if (i > 0) {
                    msg = "Service Type Updated Successfuly";
                } else {
                    msg = "error";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "UPDATESERVICETYPE";
    }
    
    public String reportServiceType() throws Exception {
        setAdminServices(new AdminServices());
        try {
            setServiceTypeList(new ArrayList<>());
            setServiceTypeList(getAdminServices().reportServiceType());

            if (!serviceTypeList.isEmpty()) {
                setNoData(false);
                System.out.println("Service types retrieved = " + getServiceTypeList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REPORTSERVICETYPE";
    }
    
    public String reportUser() throws Exception {
        setAdminServices(new AdminServices());
        try {
            setUserList(new ArrayList<>());
            setUserList(getAdminServices().reportUser());

            if (!userList.isEmpty()) {
                setNoData(false);
                System.out.println("Users retrieve = " + getUserList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REPORTUSER";
    }
    
    public String deleteUser() throws Exception {
        setAdminServices(new AdminServices());
        try {
            int isDeleted = getAdminServices().deleteUserDetails(getEmailId());
            if (isDeleted > 0) {
                msg = "User deleted successfully";
            } else {
                msg = "Some error";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "DELETEUSER";
    }
    
    public String registerService() throws Exception {
        setAdminServices(new AdminServices());

        try {
            setCtr(getAdminServices().registerService(getServiceName(), getPinCode()));
            if (getCtr() > 0) {
                setMsg("Service Registered");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REGISTERSERVICE";
    }
    
    public String reportService() throws Exception {
        setAdminServices(new AdminServices());
        try {
            setServiceList(new ArrayList<>());
            setServiceList(getAdminServices().reportService());

            if (!serviceList.isEmpty()) {
                setNoData(false);
                System.out.println("Services retrieved = " + getServiceList().size());
                System.out.println("setting nodata=false");
            } else {
                setNoData(true);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "REPORTSERVICE";
    }
    
    public String deleteService() throws Exception {
        setAdminServices(new AdminServices());

        try {
            setCtr(getAdminServices().deleteService(getServiceId()));
            if (getCtr() > 0) {
                setMsg("Service Deleted");
            } else {
                setMsg("Some error");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "DELETESERVICE";
    }
    
    public String updateService() throws Exception {
        setAdminServices(new AdminServices());
        try {
            if (getSubmitType().equals("updateServicedata")) {
                Service service = getAdminServices().fetchServiceDetails(getServiceId());
                if (service != null) {
                    serviceName = service.getServiceName();
                    pinCode = service.getPinCode();
                    status = service.getStatus();
                    serviceId = service.getServiceId();
                }
            } else {
                int i = getAdminServices().updateServiceDetails(serviceName, pinCode, status, serviceId);
                if (i > 0) {
                    msg = "Service Updated Successfuly";
                } else {
                    msg = "error";
                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return "UPDATESERVICE";
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
     * @return the adminServices
     */
    public AdminServices getAdminServices() {
        return adminServices;
    }

    /**
     * @param adminServices the adminServices to set
     */
    public void setAdminServices(AdminServices adminServices) {
        this.adminServices = adminServices;
    }

    /**
     * @return the pinCode
     */
    public int getPinCode() {
        return pinCode;
    }

    /**
     * @param pinCode the pinCode to set
     */
    public void setPinCode(int pinCode) {
        this.pinCode = pinCode;
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
     * @return the orderList
     */
    public List<Orders> getOrderList() {
        return orderList;
    }

    /**
     * @param orderList the orderList to set
     */
    public void setOrderList(List<Orders> orderList) {
        this.orderList = orderList;
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
     * @return the price
     */
    public double getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(double price) {
        this.price = price;
    }

    /**
     * @return the cityList
     */
    public List<City> getCityList() {
        return cityList;
    }

    /**
     * @param cityList the cityList to set
     */
    public void setCityList(List<City> cityList) {
        this.cityList = cityList;
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
     * @return the submitType
     */
    public String getSubmitType() {
        return submitType;
    }

    /**
     * @param submitType the submitType to set
     */
    public void setSubmitType(String submitType) {
        this.submitType = submitType;
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

    /**
     * @return the userList
     */
    public List<User> getUserList() {
        return userList;
    }

    /**
     * @param userList the userList to set
     */
    public void setUserList(List<User> userList) {
        this.userList = userList;
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
     * @return the serviceName
     */
    public String getServiceName() {
        return serviceName;
    }

    /**
     * @param serviceName the serviceName to set
     */
    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    /**
     * @return the serviceList
     */
    public List<Service> getServiceList() {
        return serviceList;
    }

    /**
     * @param serviceList the serviceList to set
     */
    public void setServiceList(List<Service> serviceList) {
        this.serviceList = serviceList;
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
    
}
