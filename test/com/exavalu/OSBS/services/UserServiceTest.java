/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.services;

import com.exavalu.OSBS.pojos.ServiceType;
import com.exavalu.OSBS.pojos.User;
import java.util.ArrayList;
import java.util.List;
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
public class UserServiceTest {
    
    public UserServiceTest() {
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
     * Test of registerUser method, of class UserService.
     */
    @Test
    public void testRegisterUser() {
        System.out.println("registerUser");
        String emailId = "";
        UserService instance = new UserService();
        int expResult = 0;
        int result = instance.registerUser(emailId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of fetchUserDetails method, of class UserService.
     */
    @Test
    public void testFetchUserDetails() {
        System.out.println("fetchUserDetails");
        String emailId = "";
        UserService instance = new UserService();
        User expResult = null;
        User result = instance.fetchUserDetails(emailId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of generateOTP method, of class UserService.
     */
    @Test
    public void testGenerateOTP() {
        System.out.println("generateOTP");
        UserService instance = new UserService();
        String expResult = "";
        String result = instance.generateOTP();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of sendMail method, of class UserService.
     */
    @Test
    public void testSendMail() {
        System.out.println("sendMail");
        String to = "";
        String mssg = "";
        UserService instance = new UserService();
        int expResult = 0;
        int result = instance.sendMail(to, mssg);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportPinCode method, of class UserService.
     */
    @Test
    public void testReportPinCode() throws Exception {
        System.out.println("reportPinCode");
        String cityName = "";
        UserService instance = new UserService();
        List expResult = null;
        List result = instance.reportPinCode(cityName);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of registerOrders method, of class UserService.
     */
    @Test
    public void testRegisterOrders() throws Exception {
        System.out.println("registerOrders");
        String name = "";
        String address = "";
        String phoneNo = "";
        double totalPrice = 0.0;
        String users_emailId = "";
        ArrayList<ServiceType> cart = null;
        UserService instance = new UserService();
        int expResult = 0;
        int result = instance.registerOrders(name, address, phoneNo, totalPrice, users_emailId, cart);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of registerFeedback method, of class UserService.
     */
    @Test
    public void testRegisterFeedback() throws Exception {
        System.out.println("registerFeedback");
        String feedback = "";
        String users_emailId = "";
        UserService instance = new UserService();
        int expResult = 0;
        int result = instance.registerFeedback(feedback, users_emailId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of fetchServiceDetails method, of class UserService.
     */
    @Test
    public void testFetchServiceDetails() throws Exception {
        System.out.println("fetchServiceDetails");
        UserService instance = new UserService();
        ArrayList<ServiceType> expResult = null;
        ArrayList<ServiceType> result = instance.fetchServiceDetails();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of salon method, of class UserService.
     */
    @Test
    public void testSalon() throws Exception {
        System.out.println("salon");
        int serviceId = 0;
        UserService instance = new UserService();
        List<ServiceType> expResult = null;
        List<ServiceType> result = instance.salon(serviceId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of fetchServiceTypeDetails method, of class UserService.
     */
    @Test
    public void testFetchServiceTypeDetails() throws Exception {
        System.out.println("fetchServiceTypeDetails");
        String type = "";
        UserService instance = new UserService();
        ServiceType expResult = null;
        ServiceType result = instance.fetchServiceTypeDetails(type);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
       // fail("The test case is a prototype.");
    }

    /**
     * Test of fetchCartDetails method, of class UserService.
     */
    @Test
    public void testFetchCartDetails() throws Exception {
        System.out.println("fetchCartDetails");
        String type = "";
        ArrayList<ServiceType> cart = null;
        UserService instance = new UserService();
        int expResult = 0;
        int result = instance.fetchCartDetails(type, cart);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
