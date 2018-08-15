package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/material")
public class materialController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "material/material_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "material/material_modify";
    }


    @RequestMapping(value = "/addApp.do",method = RequestMethod.GET)
    public String addApp(){
        return "material/materialApp_add";
    }

    @RequestMapping(value = "/modifyApp.do",method = RequestMethod.GET)
    public String modifyApp(){
        return "material/materialApp_modify";
    }



}
