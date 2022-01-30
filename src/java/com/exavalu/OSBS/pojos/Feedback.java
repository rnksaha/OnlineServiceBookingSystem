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
public class Feedback {
    private int feedbackId;
    private String feedback;
    private String users_emalId;

    /**
     * @return the feedbackId
     */
    public int getFeedbackId() {
        return feedbackId;
    }

    /**
     * @param feedbackId the feedbackId to set
     */
    public void setFeedbackId(int feedbackId) {
        this.feedbackId = feedbackId;
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
     * @return the users_emalId
     */
    public String getUsers_emalId() {
        return users_emalId;
    }

    /**
     * @param users_emalId the users_emalId to set
     */
    public void setUsers_emalId(String users_emalId) {
        this.users_emalId = users_emalId;
    }
    
}
