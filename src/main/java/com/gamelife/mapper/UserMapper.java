package com.gamelife.mapper;

import com.gamelife.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface UserMapper {
    public List<User> list();

    public void add(User user);

    void delete(int id);

    public User get(int id);

    void update(User user);

    @Select("select * from user where name = #{name}")
    public User getUserByName(String name);

    @Select("select * from user where name = #{name} and password = #{password}")
    public User getByUser(@Param("name") String name, @Param("password") String password);
}
