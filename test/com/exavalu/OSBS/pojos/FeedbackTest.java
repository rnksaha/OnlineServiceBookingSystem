/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.pojos;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author rounak
 */
public class FeedbackTest {
    
    public FeedbackTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of getFeedbackId method, of class Feedback.
     */
    @Test
    public void testGetFeedbackId() {
        System.out.println("getFeedbackId");
        Feedback instance = new Feedback();
        int expResult = 0;
        int result = instance.getFeedbackId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFeedbackId method, of class Feedback.
     */
    @Test
    public void testSetFeedbackId() {
        System.out.println("setFeedbackId");
        int feedbackId = 0;
        Feedback instance = new Feedback();
        instance.setFeedbackId(feedbackId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getFeedback method, of class Feedback.
     */
    @Test
    public void testGetFeedback() {
        System.out.println("getFeedback");
        Feedback instance = new Feedback();
        String expResult = "";
        String result = instance.getFeedback();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setFeedback method, of class Feedback.
     */
    @Test
    public void testSetFeedback() {
        System.out.println("setFeedback");
        String feedback = "";
        Feedback instance = new Feedback();
        instance.setFeedback(feedback);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
