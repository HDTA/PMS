package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/house")
public class houseController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "house/house_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "house/house_modify";
    }


    @RequestMapping(value = "/addApp.do",method = RequestMethod.GET)
    public String addApp(){
        return "house/houseApp_add";
    }

    @RequestMapping(value = "/modifyApp.do",method = RequestMethod.GET)
    public String modifyApp(){
        return "house/houseApp_modify";
    }



}
