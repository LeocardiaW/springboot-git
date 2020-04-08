package com.hbue.myconfig;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyAspect {

//    @Before(value = "within(com.hbue.service.impl.*Serviceimpl)")
//    public void before(JoinPoint point){
//        System.out.println("进入方法");
//        System.out.println("方法名"+point.getSignature().getName());
//        System.out.println("目标对象"+point.getTarget());
//    }
//
//    @After(value = "within(com.hbue.service.impl.*Serviceimpl)")
//    public void after(JoinPoint point){
//        System.out.println("方法执行完成");
//    }

    //环绕通知
    @Around("within(com.hbue.service.impl.*Serviceimpl)")
    public Object around(ProceedingJoinPoint joinPoint){
        System.out.println("进入方法");
        System.out.println("方法名"+joinPoint.getSignature().getName());
        System.out.println("目标对象"+joinPoint.getTarget());
        try {
            Object proceed = joinPoint.proceed();
            System.out.println("执行完成");
            return proceed;
        } catch (Throwable throwable) {
            throwable.printStackTrace();
            System.out.println("出现异常");
            return null;
        }
    }

}
