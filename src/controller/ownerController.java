package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/owner")
public class ownerController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "owner/owner_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "owner/owner_modify";
    }




}
