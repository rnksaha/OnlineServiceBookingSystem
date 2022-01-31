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
public class CityTest {
    
    public CityTest() {
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
     * Test of getCityName method, of class City.
     */
    @Test
    public void testGetCityName() {
        System.out.println("getCityName");
        City instance = new City();
        String expResult = "";
        String result = instance.getCityName();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setCityName method, of class City.
     */
    @Test
    public void testSetCityName() {
        System.out.println("setCityName");
        String cityName = "";
        City instance = new City();
        instance.setCityName(cityName);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getPinCode method, of class City.
     */
    @Test
    public void testGetPinCode() {
        System.out.println("getPinCode");
        City instance = new City();
        int expResult = 0;
        int result = instance.getPinCode();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of setPinCode method, of class City.
     */
    @Test
    public void testSetPinCode() {
        System.out.println("setPinCode");
        int pinCode = 0;
        City instance = new City();
        instance.setPinCode(pinCode);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
