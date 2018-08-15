package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/fix")
public class fixController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "fix/fix_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "fix/fix_modify";
    }




}
