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

    public List<User> list(){
        return userMapper.list();
    };

    public void add(User user){

        userMapper.add(user);
    }

    void delete(int id){
        userMapper.delete(id);
    }

    public User get(int id){
        return userMapper.get(id);
    }

    void update(User user){
        userMapper.update(user);
    }

    public List<User> getUserByName(String name) {
        return userMapper.getUserByName(name);
    }

    public User getByUser(String name, String password){
        return userMapper.getByUser(name, password);
    }
}
