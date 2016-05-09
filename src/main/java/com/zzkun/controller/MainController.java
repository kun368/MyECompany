package com.zzkun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by kun on 2016/5/8.
 */
@Controller
public class MainController {

    @RequestMapping(value = "/")
    public String index() {
        return "Index";
    }

}
