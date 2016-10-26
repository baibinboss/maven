package com.baibin.maven.system.services;

import com.baibin.maven.system.domains.MySystem;
import org.hyperic.sigar.SigarException;

/**
 * Created by ibm on 2016/9/1.
 */
public interface SystemService {

    /**
     * 得到服务器状态信息
     * @return 服务器状态对象
     * @throws SigarException
     */
    MySystem getMessage() throws SigarException;
}
