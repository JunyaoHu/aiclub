package com.hujunyao.test;

import com.hujunyao.pojo.User;
import com.hujunyao.service.UserService;
import com.hujunyao.service.impl.UserServiceImpl;
import org.junit.Test;

public class UserServiceTest {

    UserService userService = new UserServiceImpl();

    @Test
    public void registUser() {
        userService.registUser(new User(null, "hujunyao", "123456", "1078622540@qq.com"));
    }

    @Test
    public void login() {
        System.out.println( userService.login(new User(null, "admin", "admin", null)) );
    }

    @Test
    public void existsUsername() {
        if (userService.existsUsername("hujunyao")) {
            System.out.println("用户名已存在！");
        } else {
            System.out.println("用户名可用！");
        }
    }
}