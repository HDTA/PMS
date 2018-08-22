package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import utils.JsonParse;
import utils.VerifyCodeUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
@RequestMapping(value = "/login")
public class loginController {

    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    public String login(){
        return "public/success";
    }

    @RequestMapping(value = "/index.do",method = RequestMethod.GET)
    public String index(){
        return "public/login";
    }


    /**
     * 生成验证码图片
     * @param request
     * @param response
     */
    @RequestMapping(value = "/code.do",method = RequestMethod.GET)
    public void code(HttpServletRequest request, HttpServletResponse response){
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        response.setContentType("image/jpeg");

        //生成随机字串
        String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
        //存入会话session
        HttpSession session = request.getSession(true);
        session.setAttribute("rand", verifyCode.toLowerCase());
        //生成图片
        int w = 100, h = 40;
        try {
            VerifyCodeUtils.outputImage(w, h, response.getOutputStream(), verifyCode);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 验证码的比较
     * @param data 用户输入的验证码字符串
     * @param session  随机生成的验证码
     * @return 返回比较结果
     */
    @RequestMapping(value = "/value.do",method = RequestMethod.POST,consumes = "application/json")
    @ResponseBody
    public String jsonValue(@RequestBody String data, HttpSession session){
        String value = JsonParse.parseJson(data, "value");
        String rand = (String) session.getAttribute("rand");
        if(value.equalsIgnoreCase(rand)){
            return "true";
        }
        return "false";
    }






}
