package com.baibin.maven.rbac.daos;
import com.baibin.maven.rbac.domains.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by ibm on 2016/9/9.
 */

public interface UserMapper {
    User get(String id);
    List<User> list();
}
