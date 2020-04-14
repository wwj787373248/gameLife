package com.gamelife.pojo;


import lombok.Data;

import java.util.Date;

@Data
public class User {
    private int id;
    private String name;
    private String password;
    private String salt;
    private String state;
    private Date cteate_time;
    private int permission;
}
