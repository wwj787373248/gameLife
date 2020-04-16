package com.gamelife.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("")
public class TestController {
    @RequestMapping(value = "/test", method = RequestMethod.GET)
    @ResponseBody
    public String test(Model model, HttpSession session) {
        return "dwd";
    }
}
