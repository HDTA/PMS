package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/tariff")
public class tariffController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "tariff/tariff_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "tariff/tariff_modify";
    }

    @RequestMapping(value = "/addApp.do",method = RequestMethod.GET)
    public String addApp(){
        return "tariff/tariffApp_add";
    }

    @RequestMapping(value = "/modifyApp.do",method = RequestMethod.GET)
    public String modifyApp(){
        return "tariff/tariffApp_modify";
    }




}
