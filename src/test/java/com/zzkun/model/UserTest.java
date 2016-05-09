package com.zzkun.model;

import com.zzkun.dao.UserDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by kun on 2016/5/7.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:springmvc-servlet.xml")
public class UserTest {

    @Autowired
    private UserDao userDao;

    @Test
    public void test1() throws Exception {
        User user = new User();
        user.setUsername("heheda");
        user.setPassword("1234fds");
        user.setPower(1);
        System.out.println(userDao.add(user));
    }
}