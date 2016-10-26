package com.baibin.maven.system.domains;

import java.io.Serializable;

/**
 * Created by ibm on 2016/9/1.
 */
public class MySystem implements Serializable {
    private String cpuUser;
    private String cpuSystem;
    private String cpuWait;
    private String cpuFree;
    private String memoryTotal;
    private String memoryUsed;
    private String memoryFree;
    private String memorySwapTotal;
    private String memorySwapUsed;
    private String memorySwapFree;

    public String getCpuUser() {
        return cpuUser;
    }

    public void setCpuUser(String cpuUser) {
        this.cpuUser = cpuUser;
    }

    public String getCpuSystem() {
        return cpuSystem;
    }

    public void setCpuSystem(String cpuSystem) {
        this.cpuSystem = cpuSystem;
    }

    public String getCpuWait() {
        return cpuWait;
    }

    public void setCpuWait(String cpuWait) {
        this.cpuWait = cpuWait;
    }

    public String getCpuFree() {
        return cpuFree;
    }

    public void setCpuFree(String cpuFree) {
        this.cpuFree = cpuFree;
    }

    public String getMemoryTotal() {
        return memoryTotal;
    }

    public void setMemoryTotal(String memoryTotal) {
        this.memoryTotal = memoryTotal;
    }

    public String getMemoryUsed() {
        return memoryUsed;
    }

    public void setMemoryUsed(String memoryUsed) {
        this.memoryUsed = memoryUsed;
    }

    public String getMemoryFree() {
        return memoryFree;
    }

    public void setMemoryFree(String memoryFree) {
        this.memoryFree = memoryFree;
    }

    public String getMemorySwapTotal() {
        return memorySwapTotal;
    }

    public void setMemorySwapTotal(String memorySwapTotal) {
        this.memorySwapTotal = memorySwapTotal;
    }

    public String getMemorySwapUsed() {
        return memorySwapUsed;
    }

    public void setMemorySwapUsed(String memorySwapUsed) {
        this.memorySwapUsed = memorySwapUsed;
    }

    public String getMemorySwapFree() {
        return memorySwapFree;
    }

    public void setMemorySwapFree(String memorySwapFree) {
        this.memorySwapFree = memorySwapFree;
    }
}
