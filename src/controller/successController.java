package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/success")
public class successController {

    @RequestMapping(value = "/admin.do",method = RequestMethod.GET)
    public String admin(){
        return "admin/admin";
    }

    @RequestMapping(value = "/owner.do",method = RequestMethod.GET)
    public String owner(){
        return "owner/owner";
    }

    @RequestMapping(value = "/emp.do",method = RequestMethod.GET)
    public String emp(){
        return "emp/emp";
    }

    @RequestMapping(value = "/member.do",method = RequestMethod.GET)
    public String member(){
        return "member/member";
    }

    @RequestMapping(value = "/permission.do",method = RequestMethod.GET)
    public String permission(){
        return "permission/permission";
    }

    @RequestMapping(value = "/house.do",method = RequestMethod.GET)
    public String house(){
        return "house/house";
    }

    @RequestMapping(value = "/houseApp.do",method = RequestMethod.GET)
    public String houseApp(){
        return "house/houseApp";
    }

    @RequestMapping(value = "/tariff.do",method = RequestMethod.GET)
    public String tariff(){
        return "tariff/tariff";
    }

    @RequestMapping(value = "/tariffApp.do",method = RequestMethod.GET)
    public String tariffApp(){
        return "tariff/tariffApp";
    }

    @RequestMapping(value = "/material.do",method = RequestMethod.GET)
    public String material(){
        return "material/material";
    }

    @RequestMapping(value = "/materialApp.do",method = RequestMethod.GET)
    public String materialApp(){
        return "material/materialApp";
    }

    @RequestMapping(value = "/fix.do",method = RequestMethod.GET)
    public String fix(){
        return "fix/fix";
    }




}
