package com.baibin.maven.rbac.services;

import com.baibin.maven.rbac.domains.User;

import java.util.List;

/**
 * Created by ibm on 2016/9/9.
 */
public interface UserService {
    List<User> allList();
}
