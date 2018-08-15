package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/member")
public class memberController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "member/member_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "member/member_modify";
    }




}
