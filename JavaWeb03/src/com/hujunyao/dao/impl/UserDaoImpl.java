package com.hujunyao.dao.impl;

import com.hujunyao.dao.UserDao;
import com.hujunyao.pojo.User;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

public class UserDaoImpl extends BaseDao implements UserDao {
    @Override
    public User queryUserByUsername(String username) {
        String sql = "select * from user where username = ?";
        return queryForOne(User.class, sql, username);
    }

    @Override
    public User queryUserByUsernameAndPassword(String username, String password) {
        String sql = "select * from user where username = ? and password = ?";
        return queryForOne(User.class, sql, username,password);
    }

    @Override
    public int saveUser(User user) {
        java.util.Date date = new Date();//获得当前时间
        Timestamp timestamp = new Timestamp(date.getTime());//将时间转换成Timestamp类型，这样便可以存入到Mysql数据库中
        String sql = "insert into user(username, password,icon, email) values(?,?,?,?)";
        return update(sql,  user.getUsername(), user.getPassword(),user.getIcon(), user.getEmail());
    }

    @Override
    public int updateUser(User user) {
        String sql = "update user set username=?, password=?, icon=?,  email=? where user_id = ?";
        return update(sql, user.getUsername() , user.getPassword(), user.getIcon(),  user.getEmail(), user.getUser_id());

    }

    @Override
    public User queryUserById(Integer id) {
        String sql = "select * from user where user_id = ?";
        return queryForOne(User.class, sql, id);
    }

    @Override
    public List<User> queryUsers(int pageNo, int pageSize) {
        String sql = "select * from user limit ?,?";
        return queryForList(User.class,sql,(pageNo - 1)*pageSize,pageSize);
    }

    @Override
    public Integer queryForUserTotalCount() {
        String sql = "select count(*) from user";
        Number count = (Number) queryForSingleValue(sql);
        return count.intValue();
    }

    
}
