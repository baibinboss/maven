package com.baibin.maven.rbac.controllers;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.baibin.maven.rbac.services.UserService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by ibm on 2016/9/2.
 */
@Controller
@RequestMapping("/user")
public class UserController {
    private final Logger logger = Logger.getLogger(UserController.class);
    @Resource
    private UserService userService;

    @RequestMapping(value = {"/", "/index", ""})
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/rbac/user/index");
        return modelAndView;
    }

    @RequestMapping(value = {"/list"})
    @ResponseBody
    public String query() {
        return JSONArray.toJSONString(userService.allList());
    }

}
