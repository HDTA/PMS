package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/success")
public class successController {

    @RequestMapping(value = "/admin.do",method = RequestMethod.GET)
    public String admin(){
        return "admin";
    }

    @RequestMapping(value = "/owner.do",method = RequestMethod.GET)
    public String owner(){
        return "owner";
    }

    @RequestMapping(value = "/emp.do",method = RequestMethod.GET)
    public String emp(){
        return "emp";
    }

    @RequestMapping(value = "/member.do",method = RequestMethod.GET)
    public String member(){
        return "member";
    }

    @RequestMapping(value = "/permission.do",method = RequestMethod.GET)
    public String permission(){
        return "permission";
    }

    @RequestMapping(value = "/house.do",method = RequestMethod.GET)
    public String house(){
        return "house";
    }

    @RequestMapping(value = "/tariff.do",method = RequestMethod.GET)
    public String tariff(){
        return "tariff";
    }

    @RequestMapping(value = "/material.do",method = RequestMethod.GET)
    public String material(){
        return "material";
    }

    @RequestMapping(value = "/fix.do",method = RequestMethod.GET)
    public String fix(){
        return "fix";
    }




}
