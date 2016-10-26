package com.baibin.maven.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/**
 * Created by ibm on 2016/10/11.
 */
public class PropUtils {
    public static String val(String key,String fileName) throws IOException {
        String path = PropUtils.class.getClassLoader().getResource("").getPath()+"/prop/"+fileName+".properties";
        Properties properties = new Properties();
        properties.load(new FileInputStream(path));
        return (String) properties.get(key);
    }
}
