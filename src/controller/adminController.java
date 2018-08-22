package controller;


import entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/admin")
public class adminController {

    @RequestMapping(value = "/add.do",method = RequestMethod.GET)
    public String add(){
        return "admin/admin_add";
    }

    @RequestMapping(value = "/modify.do",method = RequestMethod.GET)
    public String modify(){
        return "admin/admin_modify";
    }

    @RequestMapping(value = "/addHandle.do",method = RequestMethod.POST)
    public String addHandle(@RequestParam(name = "role") String role,
                            @RequestParam(name = "account") String account,
                            @RequestParam(name = "username") String username,
                            @RequestParam(name = "password") String password,
                            @RequestParam(name = "pwd") String pwd,
                            @RequestParam(name = "email") String email,
                            @RequestParam(name = "tel") String tel,
                            @RequestParam(name = "sex") Byte  sex,
                            @RequestParam(name = "birthday") String birthday,
                            @RequestParam(name = "address") String address,
                            @RequestParam(name = "info") String info){

        User user = new User();
        user.setRole(role);
        user.setAccount(account);
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setTel(tel);
        user.setSex(sex);
        user.setBirthday(birthday);
        user.setAddress(address);
        user.setInfo(info);

        System.out.println(user);

        return "admin/admin";
    }




}
