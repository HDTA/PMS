package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/login")
public class loginController {

    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String login(){
        return "success";
    }

    @RequestMapping(value = "/index.do",method = RequestMethod.GET)
    public String index(){
        return "redirect:index.jsp";
    }




}
