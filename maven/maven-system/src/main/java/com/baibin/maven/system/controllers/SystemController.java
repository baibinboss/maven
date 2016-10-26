package com.baibin.maven.system.controllers;

import com.baibin.maven.system.domains.MySystem;
import com.baibin.maven.system.services.SystemService;
import org.apache.log4j.Logger;
import org.hyperic.sigar.SigarException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by ibm on 2016/9/1.
 */
@Controller
@RequestMapping("/system")
public class SystemController {
    private static Logger logger = Logger.getLogger(SystemController.class);
    @Resource
    private SystemService systemService;
    @RequestMapping("/index")
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView("/base/system/index");
        try {
            MySystem mySystem = systemService.getMessage();
            modelAndView.addObject("system",mySystem);
        } catch (SigarException e) {
            logger.error(e);
        }
        return modelAndView;
    }
}
