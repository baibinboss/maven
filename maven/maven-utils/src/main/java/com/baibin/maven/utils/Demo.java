package com.baibin.maven.utils;

import org.apache.axis.encoding.Base64;

import java.io.File;
import java.io.FileOutputStream;
/**
 * Created by ibm on 2016/10/19.
 */
public class Demo {
    public static void main(String[] args) {
        new Demo().demo();
    }
    public void demo() {
        String content = "";
        System.out.println(content.length());
        byte[] buf =  Base64.decode(content);


        File file = new File("D:/a.zip");
        try {
            FileOutputStream outputStream = new FileOutputStream(file);
            outputStream.write(buf);
            outputStream.flush();
            outputStream.close();
        } catch (java.io.IOException e) {
            e.printStackTrace();
        }
    }
}
