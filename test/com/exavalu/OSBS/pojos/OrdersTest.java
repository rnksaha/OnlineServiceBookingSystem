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
public class OrdersTest {
    
    public OrdersTest() {
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
     * Test of getName method, of class Orders.
     */
    @Test
    public void testGetName() {
        System.out.println("getName");
        Orders instance = new Orders();
        String expResult = "";
        String result = instance.getName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setName method, of class Orders.
     */
    @Test
    public void testSetName() {
        System.out.println("setName");
        String name = "";
        Orders instance = new Orders();
        instance.setName(name);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getAddress method, of class Orders.
     */
    @Test
    public void testGetAddress() {
        System.out.println("getAddress");
        Orders instance = new Orders();
        String expResult = "";
        String result = instance.getAddress();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setAddress method, of class Orders.
     */
    @Test
    public void testSetAddress() {
        System.out.println("setAddress");
        String address = "";
        Orders instance = new Orders();
        instance.setAddress(address);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPhoneNo method, of class Orders.
     */
    @Test
    public void testGetPhoneNo() {
        System.out.println("getPhoneNo");
        Orders instance = new Orders();
        String expResult = "";
        String result = instance.getPhoneNo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPhoneNo method, of class Orders.
     */
    @Test
    public void testSetPhoneNo() {
        System.out.println("setPhoneNo");
        String phoneNo = "";
        Orders instance = new Orders();
        instance.setPhoneNo(phoneNo);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getTotalPrice method, of class Orders.
     */
    @Test
    public void testGetTotalPrice() {
        System.out.println("getTotalPrice");
        Orders instance = new Orders();
        double expResult = 0.0;
        double result = instance.getTotalPrice();
        assertEquals(expResult, result, 0.0);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setTotalPrice method, of class Orders.
     */
    @Test
    public void testSetTotalPrice() {
        System.out.println("setTotalPrice");
        double totalPrice = 0.0;
        Orders instance = new Orders();
        instance.setTotalPrice(totalPrice);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
