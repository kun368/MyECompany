package com.zzkun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by kun on 2016/5/8.
 */
@Controller
public class MainController {


    @RequestMapping(value = {"/", "index"})
    public ModelAndView index() {
        return new ModelAndView("Index");
    }

    @RequestMapping("/about")
    public String about() {
        return "about/AboutUs";
    }

    @RequestMapping("contactus")
    public String contactus() {
        return "contact/ContactUs";
    }
}
