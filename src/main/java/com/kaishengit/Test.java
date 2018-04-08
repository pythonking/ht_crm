package com.kaishengit;

import org.apache.commons.codec.digest.DigestUtils;
import org.quartz.*;
import org.quartz.impl.StdScheduler;
import org.quartz.impl.StdSchedulerFactory;

import java.util.Date;
import java.util.Timer;

public class Test {

    public static void main(String[] args) throws SchedulerException {
        System.out.println("==================================");
        System.out.println(DigestUtils.md5Hex("000000"));
        System.out.println("==================================");
    }
}
