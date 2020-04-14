package com.gamelife.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class IndexController {

    @RequestMapping("/")
    public String index(Model model){
        return "index/index";
    }

    @RequestMapping("/show")
    public String show(Model mode) {
        return "index/show";
    }

    @RequestMapping("/technology")
    public String technology(Model model) {
        return "technology/technology";
    }

}
