package com.hujunyao.service.impl;

import com.hujunyao.dao.UserDao;
import com.hujunyao.dao.impl.UserDaoImpl;
import com.hujunyao.pojo.User;
import com.hujunyao.service.UserService;

import java.util.List;

public class UserServiceImpl implements UserService {

    private UserDao userDao = new UserDaoImpl();

    @Override
    public void registUser(User user) {

        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryUserByUsernameAndPassword(user.getUsername(), user.getPassword());
    }

    @Override
    public boolean existsUsername(String username) {
        if (userDao.queryUserByUsername(username) == null) {
           // 等于null,说明没查到
           return false;
        }
        return true;
    }

    @Override
    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    @Override
    public User queryUserById(Integer id) {
        return userDao.queryUserById(id);
    }

    @Override
    public List<User> queryUsers(int pageNo, int pageSize) {
        return userDao.queryUsers(pageNo, pageSize);
    }

    @Override
    public int queryForUserTotalCount() {
        return userDao.queryForUserTotalCount();
    }
}