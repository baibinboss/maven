package com.baibin.maven.rbac.domains;

import org.apache.commons.lang.builder.ToStringBuilder;

import java.io.Serializable;

/**
 * Created by ibm on 2016/9/9.
 */
public class User implements Serializable {
    private String id;
    private String name;
    private String loginId;
    private String pass;
    private String email;
    private Sex sex;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLoginId() {
        return loginId;
    }

    public void setLoginId(String loginId) {
        this.loginId = loginId;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Sex getSex() {
        return sex;
    }

    public void setSex(Sex sex) {
        this.sex = sex;
    }

    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
