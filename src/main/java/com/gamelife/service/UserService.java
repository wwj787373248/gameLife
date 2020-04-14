package com.gamelife.service;

import com.gamelife.mapper.UserMapper;
import com.gamelife.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.SimpleHash;

import java.util.List;

@Service
public class UserService {

    @Autowired
    UserMapper userMapper;

    public List<User> list() {
        return userMapper.list();
    }

    public void add(User user) {

        userMapper.add(user);
    }

    void delete(int id) {
        userMapper.delete(id);
    }

    public User get(int id) {
        return userMapper.get(id);
    }

    void update(User user) {
        userMapper.update(user);
    }

    public User getUserByName(String name) {
        return userMapper.getUserByName(name);
    }

    public User getByUser(String name, String password, String salt) {
        int times = 2;
        String algorithmName = "md5";
        String encodedPassword = new SimpleHash(algorithmName, password, salt, times).toString();

//        System.out.printf("原始密码是 %s , 盐是： %s, 运算次数是： %d, 运算出来的密文是：%s ", password, salt, times, encodedPassword);
        return userMapper.getByUser(name, encodedPassword);
    }
}
