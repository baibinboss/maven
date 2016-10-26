package com.baibin.maven.rbac.services;

import com.baibin.maven.rbac.daos.UserMapper;
import com.baibin.maven.rbac.domains.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by ibm on 2016/9/9.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource(name = "userDao")
    private UserMapper userMapper;
    @Override
    public List<User> allList() {
        return userMapper.list();
    }
}
