package com.baibin.maven.security.controllers;

import com.baibin.maven.core.constant.Constant;
import com.baibin.maven.utils.JsonUtils;
import com.baibin.maven.utils.PropUtils;
import org.apache.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

/**
 * Created by ibm on 2016/9/8.
 */

@Controller
@RequestMapping(value = {"/", "/login", ""})
public class LoginController {
    private Logger logger = Logger.getLogger(LoginController.class);
    @Resource
    private HttpServletRequest request;

    private JdbcTemplate jdbcTemplate;
    @RequestMapping("")
    public ModelAndView index() {
        request.getSession().setAttribute(Constant.LOGIN_USER, request.getUserPrincipal().getName());
        ModelAndView modelAndView = new ModelAndView("base/index/index");
        return modelAndView;
    }

    @RequestMapping(value = {"/validate"})
    @ResponseBody
    public Map<String, Object> validate() {
        HttpSession session = request.getSession();
        Object isLogin = session.getAttribute(Constant.LOGIN_USER);
        if (null != isLogin) {
            return JsonUtils.toString(Constant.SUCCESS_CODE, "用户处于登录状态！");
        } else {
            return JsonUtils.toString(Constant.ERROR_CODE, "用户已经退出登录");
        }
    }

    /**
     * 注销登陆
     */
    @RequestMapping("/logout")
    public String logout( HttpServletResponse response) {
        request.getSession().invalidate();
        String casIp = null;
        try {
            casIp = PropUtils.val(Constant.CAS_LOGIN_IP, "cas");
        } catch (IOException e) {
            logger.error("读取cas配置文件发生了意外：" + e);
            casIp = Constant.CAS_LOGIN_IP_PATH;
        }
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", 0);
        response.setHeader("Pragma", "no-cache");
        return "redirect:" + casIp;
    }

}
