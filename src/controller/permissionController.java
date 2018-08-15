package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/permission")
public class permissionController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "permission/permission_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "permission/permission_modify";
    }




}
