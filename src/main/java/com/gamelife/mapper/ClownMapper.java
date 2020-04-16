package com.gamelife.mapper;

import com.gamelife.pojo.Clown;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

public interface ClownMapper {

    @Select("select * from clown ")
    public List<Clown> list();

    @Insert("insert into clown (name, comment) values (#{name}, #{comment}")
    public void add(Clown clown);

    @Delete(" delete from clown where id= #{id}")
    void delete(int id);

    @Select("select * from clown where id = #{id}")
    public Clown get(int id);

    @Update("update clown set name=#{name} where id=#{id} ")
    void update(Clown clown);
}
