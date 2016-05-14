package com.zzkun.controller;

import com.zzkun.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by kun on 2016/5/14.
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private ProductService service;

    @RequestMapping("/list")
    public ModelAndView list() {
        return new ModelAndView("product/List", "products", service.getAllProduct());
    }

    @RequestMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        return new ModelAndView("product/Detail", "product", service.getProductById(id));
    }
}
