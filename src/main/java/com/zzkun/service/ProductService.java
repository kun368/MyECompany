package com.zzkun.service;

import com.zzkun.dao.ProductDao;
import com.zzkun.model.Product;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kun on 2016/5/14.
 */
@Service
public class ProductService {

    @Autowired
    private ProductDao productDao;

    private static Log logger = LogFactory.getLog(ProductService.class);

    public List<Product> getAllProduct() {
        List<Product> products = productDao.getAllProduct();
        logger.info("geekun" + products);
        return products;
    }

    public Product getProductById(int id) {
        Product product = productDao.getProductById(id);
        logger.info("geekun" + product);
        return product;
    }
}
