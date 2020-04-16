package com.gamelife.controller;

import com.gamelife.pojo.User;
import com.gamelife.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import com.alibaba.fastjson.JSONObject;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/technology")
public class TechnologyController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "technology/login";
    }

    @RequestMapping(value = "/login", method = RequestMethod.POST)
    @ResponseBody
    public String loginPost(@RequestParam("name") String name, @RequestParam("password") String password, Model
            model, HttpSession session) {
        name = HtmlUtils.htmlEscape(name);
        User user = userService.getUserByName(name);
        if (null == user) {
            JSONObject json = new JSONObject();
            json.put("result", "error");
            return json.toJSONString();
        } else {
            User userAgain = userService.getByUser(name, password, user.getSalt());
            if (null == userAgain) {
                JSONObject json = new JSONObject();
                json.put("result", "error");
                return json.toJSONString();
            }
            session.setAttribute("user", user);
            JSONObject json = new JSONObject();
            json.put("result", "success");
            json.put("tag", "/technology");
            return json.toJSONString();
        }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "index/index";
    }
}
