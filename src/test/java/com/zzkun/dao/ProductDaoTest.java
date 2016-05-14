package com.zzkun.dao;

import com.zzkun.model.Product;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/**
 * Created by kun on 2016/5/11.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:springmvc-servlet.xml")
public class ProductDaoTest {

    private static Log logger = LogFactory.getLog(ProductDaoTest.class);

    @Autowired
    private ProductDao productDao;

    @Test
    public void getAllProduct() throws Exception {
        logger.info("geekun, getAllProduct...");
        System.out.println(productDao.getAllProduct());
    }

    @Test
    public void getImageUrlList() throws Exception {
        System.out.println(productDao.getImageUrlList(1));
    }
}