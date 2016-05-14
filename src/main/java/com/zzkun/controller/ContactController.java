package com.zzkun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by kun on 2016/5/11.
 */
@Controller
@RequestMapping("/contact")
public class ContactController {

    @RequestMapping("/index")
    public String index() {
        return "contact/ContactUs";
    }

}
