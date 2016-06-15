package com.zzkun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Administrator on 2016/5/18.
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping({"/", ""})
    public String index() {
        return "admin/Main";
    }


}
