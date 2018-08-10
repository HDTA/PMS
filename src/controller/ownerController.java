package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/owner")
public class ownerController {

    @RequestMapping(value = "/admin.do",method = RequestMethod.GET)
    public String login(){
        return "admin";
    }




}
