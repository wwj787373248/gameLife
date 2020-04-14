package com.gamelife.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/technology")
public class TechnologyController {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(){
        return "technology/login";
    }
}
