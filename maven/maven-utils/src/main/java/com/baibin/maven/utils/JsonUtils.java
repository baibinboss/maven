package com.baibin.maven.utils;

import com.alibaba.fastjson.JSONObject;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by ibm on 2016/10/11.
 */
public class JsonUtils {

    public static Map<String, Object> toString(String code, String message) {
        Map<String, Object> json = new HashMap<String, Object>();
        json.put("code",code);
        json.put("message",message);
        return json;
    }
}
