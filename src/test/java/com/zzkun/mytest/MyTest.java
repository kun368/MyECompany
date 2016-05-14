package com.zzkun.mytest;

import org.junit.Test;

import java.util.Date;

/**
 * Created by kun on 2016/5/10.
 */
public class MyTest {
    @Test
    public void test1() {
        Date date = new Date();
        System.out.println(date.toLocaleString());
    }
}
