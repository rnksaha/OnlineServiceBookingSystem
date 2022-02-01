/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.services;

import com.exavalu.OSBS.pojos.Service;
import com.exavalu.OSBS.pojos.ServiceType;
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
public class AdminServicesTest {
    
    public AdminServicesTest() {
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
     * Test of registerCity method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testRegisterCity() throws Exception {
        System.out.println("registerCity");
        int pinCode = 0;
        String cityName = "";
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.registerCity(pinCode, cityName);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of disablePin method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testDisablePin() throws Exception {
        System.out.println("disablePin");
        int pinCode = 0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.disablePin(pinCode);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of enablePin method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testEnablePin() throws Exception {
        System.out.println("enablePin");
        int pinCode = 0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.enablePin(pinCode);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportCity method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testReportCity() throws Exception {
        System.out.println("reportCity");
        AdminServices instance = new AdminServices();
        List expResult = null;
        List result = instance.reportCity();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportOrders method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testReportOrders() throws Exception {
        System.out.println("reportOrders");
        AdminServices instance = new AdminServices();
        List expResult = null;
        List result = instance.reportOrders();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of registerServiceType method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testRegisterServiceType() throws Exception {
        System.out.println("registerServiceType");
        int services_serviceId = 0;
        String type = "";
        double price = 0.0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.registerServiceType(services_serviceId, type, price);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of deleteServiceType method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testDeleteServiceType() throws Exception {
        System.out.println("deleteServiceType");
        String type = "";
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.deleteServiceType(type);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportServiceType method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testReportServiceType() throws Exception {
        System.out.println("reportServiceType");
        AdminServices instance = new AdminServices();
        List expResult = null;
        List result = instance.reportServiceType();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of fetchServiceTypeDetails method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testFetchServiceTypeDetails() throws Exception {
        System.out.println("fetchServiceTypeDetails");
        String type = "";
        AdminServices instance = new AdminServices();
        ServiceType expResult = null;
        ServiceType result = instance.fetchServiceTypeDetails(type);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of updateServiceTypeDetails method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testUpdateServiceTypeDetails() throws Exception {
        System.out.println("updateServiceTypeDetails");
        int services_serviceId = 0;
        String type = "";
        double price = 0.0;
        int status = 0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.updateServiceTypeDetails(services_serviceId, type, price, status);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportUser method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testReportUser() throws Exception {
        System.out.println("reportUser");
        AdminServices instance = new AdminServices();
        List expResult = null;
        List result = instance.reportUser();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of deleteUserDetails method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testDeleteUserDetails() throws Exception {
        System.out.println("deleteUserDetails");
        String emailId = "";
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.deleteUserDetails(emailId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of enableUserDetails method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testEnableUserDetails() throws Exception {
        System.out.println("enableUserDetails");
        String emailId = "";
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.enableUserDetails(emailId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of registerService method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testRegisterService() throws Exception {
        System.out.println("registerService");
        String serviceName = "";
        int pinCode = 0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.registerService(serviceName, pinCode);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportService method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testReportService() throws Exception {
        System.out.println("reportService");
        AdminServices instance = new AdminServices();
        List expResult = null;
        List result = instance.reportService();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of deleteService method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testDeleteService() throws Exception {
        System.out.println("deleteService");
        int serviceId = 0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.deleteService(serviceId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of fetchServiceDetails method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testFetchServiceDetails() throws Exception {
        System.out.println("fetchServiceDetails");
        int serviceId = 0;
        AdminServices instance = new AdminServices();
        Service expResult = null;
        Service result = instance.fetchServiceDetails(serviceId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of updateServiceDetails method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testUpdateServiceDetails() throws Exception {
        System.out.println("updateServiceDetails");
        String serviceName = "";
        int pinCode = 0;
        int status = 0;
        int serviceId = 0;
        AdminServices instance = new AdminServices();
        int expResult = 0;
        int result = instance.updateServiceDetails(serviceName, pinCode, status, serviceId);
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }

    /**
     * Test of reportFeedback method, of class AdminServices.
     * @throws java.lang.Exception
     */
    @Test
    public void testReportFeedback() throws Exception {
        System.out.println("reportFeedback");
        AdminServices instance = new AdminServices();
        List expResult = null;
        List result = instance.reportFeedback();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        //fail("The test case is a prototype.");
    }
    
}
