/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.pojos;

import java.io.InputStream;

/**
 *
 * @author rounak
 */
public class ServiceType {

    private String type;
    private double price;
    private int status;
    private int services_serviceId;
    private InputStream image;
    private byte[] imgData;
    private String encode;

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
     * @return the image
     */
    public InputStream getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(InputStream image) {
        this.image = image;
    }

    /**
     * @return the imgData
     */
    public byte[] getImgData() {
        return imgData;
    }

    /**
     * @param imgData the imgData to set
     */
    public void setImgData(byte[] imgData) {
        this.imgData = imgData;
    }

    /**
     * @return the encode
     */
    public String getEncode() {
        return encode;
    }

    /**
     * @param encode the encode to set
     */
    public void setEncode(String encode) {
        this.encode = encode;
    }

}
