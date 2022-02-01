/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.exavalu.OSBS.core;

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
public class ConfigParamTest {
    
    public ConfigParamTest() {
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
     * Test of getUserid method, of class ConfigParam.
     */
    @Test
    public void testGetUserid() {
        System.out.println("getUserid");
        ConfigParam instance = new ConfigParam();
        String expResult = "";
        String result = instance.getUserid();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setUserid method, of class ConfigParam.
     */
    @Test
    public void testSetUserid() {
        System.out.println("setUserid");
        String userid = "";
        ConfigParam instance = new ConfigParam();
        instance.setUserid(userid);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPassword method, of class ConfigParam.
     */
    @Test
    public void testGetPassword() {
        System.out.println("getPassword");
        ConfigParam instance = new ConfigParam();
        String expResult = "";
        String result = instance.getPassword();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPassword method, of class ConfigParam.
     */
    @Test
    public void testSetPassword() {
        System.out.println("setPassword");
        String password = "";
        ConfigParam instance = new ConfigParam();
        instance.setPassword(password);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getHost method, of class ConfigParam.
     */
    @Test
    public void testGetHost() {
        System.out.println("getHost");
        ConfigParam instance = new ConfigParam();
        String expResult = "";
        String result = instance.getHost();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setHost method, of class ConfigParam.
     */
    @Test
    public void testSetHost() {
        System.out.println("setHost");
        String host = "";
        ConfigParam instance = new ConfigParam();
        instance.setHost(host);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPort method, of class ConfigParam.
     */
    @Test
    public void testGetPort() {
        System.out.println("getPort");
        ConfigParam instance = new ConfigParam();
        String expResult = "";
        String result = instance.getPort();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPort method, of class ConfigParam.
     */
    @Test
    public void testSetPort() {
        System.out.println("setPort");
        String port = "";
        ConfigParam instance = new ConfigParam();
        instance.setPort(port);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDbName method, of class ConfigParam.
     */
    @Test
    public void testGetDbName() {
        System.out.println("getDbName");
        ConfigParam instance = new ConfigParam();
        String expResult = "";
        String result = instance.getDbName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setDbName method, of class ConfigParam.
     */
    @Test
    public void testSetDbName() {
        System.out.println("setDbName");
        String dbName = "";
        ConfigParam instance = new ConfigParam();
        instance.setDbName(dbName);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
