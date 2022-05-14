package com.hujunyao.dao.impl;

import com.hujunyao.dao.UserDao;
import com.hujunyao.pojo.User;

public class UserDaoImpl implements UserDao {
    public User queryUserByUsername(String username) {
        User admin = new User(1, "admin", "admin", "06192081@qq.com");
        if (username.equals(admin.getUsername())) {
            return admin;
        } else {
            return null;
        }
    }

    public User queryUserByUsernameAndPassword(String username, String password) {
        User admin = new User(1, "admin", "admin", "06192081@qq.com");
        if (username.equals(admin.getUsername()) && password.equals(admin.getPassword())) {
            return admin;
        } else {
            return null;
        }
    }

    public int saveUser(User user) {
        System.out.println(user.getUsername() + "本可以成功注册，但因数据库暂未实现而无法添加用户。");
        return -1;
    }
}
