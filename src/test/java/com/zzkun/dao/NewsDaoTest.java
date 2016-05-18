package com.zzkun.dao;

import com.zzkun.model.News;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.Date;
import java.util.List;

import static org.junit.Assert.*;

/**
 * Created by kun on 2016/5/10.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:springmvc-servlet.xml")
public class NewsDaoTest {

    @Autowired
    private NewsDao newsDao;

    @Test
    public void test1() {
        List<News> list = newsDao.getAllNews();
        System.out.println(list);
    }

}