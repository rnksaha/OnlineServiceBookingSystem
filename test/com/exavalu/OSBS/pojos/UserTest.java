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
public class UserTest {
    
    public UserTest() {
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
     * Test of getEmailId method, of class User.
     */
    @Test
    public void testGetEmailId() {
        System.out.println("getEmailId");
        User instance = new User();
        String expResult = "";
        String result = instance.getEmailId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setEmailId method, of class User.
     */
    @Test
    public void testSetEmailId() {
        System.out.println("setEmailId");
        String emailId = "";
        User instance = new User();
        instance.setEmailId(emailId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getRoleId method, of class User.
     */
    @Test
    public void testGetRoleId() {
        System.out.println("getRoleId");
        User instance = new User();
        int expResult = 0;
        int result = instance.getRoleId();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setRoleId method, of class User.
     */
    @Test
    public void testSetRoleId() {
        System.out.println("setRoleId");
        int roleId = 0;
        User instance = new User();
        instance.setRoleId(roleId);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getStatus method, of class User.
     */
    @Test
    public void testGetStatus() {
        System.out.println("getStatus");
        User instance = new User();
        int expResult = 0;
        int result = instance.getStatus();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setStatus method, of class User.
     */
    @Test
    public void testSetStatus() {
        System.out.println("setStatus");
        int status = 0;
        User instance = new User();
        instance.setStatus(status);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
