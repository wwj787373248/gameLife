package com.gamelife.mapper;

import com.gamelife.pojo.User;

import java.util.List;

public interface UserMapper {
    public List<User> list();

    public void add(User user);

    void delete(int id);

    public User get(int id);

    void update(User user);
}
