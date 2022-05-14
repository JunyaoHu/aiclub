package com.hujunyao.service;

import com.hujunyao.pojo.Dataset;
import com.hujunyao.pojo.User;

import java.util.List;

public interface UserService {
    /**
     * 注册用户
     * @param user
     */
    public void registUser(User user);

    /**
     * 登录
     * @param user
     * @return 如果返回null，说明登录失败，返回有值，是登录成功
     */
    public User login(User user);

    /**
     * 检查 用户名是否可用
     * @param username
     * @return 返回true表示用户名已存在，返回false表示用户名可用
     */
    public boolean existsUsername(String username);



    public void updateUser(User user);

    public User queryUserById(Integer id);

    public List<User> queryUsers(int pageNo, int pageSize);

    public int queryForUserTotalCount();


}
