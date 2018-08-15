package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/emp")
public class empController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "emp/emp_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "emp/emp_modify";
    }




}
