package com.baibin.maven.system.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by ibm on 2016/9/1.
 */
@Controller
@RequestMapping("/main")
public class MainController {
    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("main/index");
        return modelAndView;
    }
}
