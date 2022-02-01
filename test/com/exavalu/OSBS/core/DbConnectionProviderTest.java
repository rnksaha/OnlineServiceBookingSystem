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
public class DbConnectionProviderTest {
    
    public DbConnectionProviderTest() {
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
     * Test of getInstance method, of class DbConnectionProvider.
     */
    @Test
    public void testGetInstance() {
        System.out.println("getInstance");
        DbConnectionProvider expResult = null;
        DbConnectionProvider result = DbConnectionProvider.getInstance();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getDbConnection method, of class DbConnectionProvider.
     */
    @Test
    public void testGetDbConnection() {
        System.out.println("getDbConnection");
        DbConnectionProvider instance = null;
        instance.getDbConnection();
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
