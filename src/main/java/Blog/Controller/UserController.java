package Blog.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import Blog.Service.MyService;
import Blog.domain.LoginUser;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class UserController {
    @Resource
    private MyService service;

    //处理登录请求
    @RequestMapping(value = "/login.do",method = RequestMethod.POST)
    @ResponseBody
    public Integer loginVerification(LoginUser user,HttpServletRequest request){
        Integer tip = 0;
        HttpSession session = request.getSession();
        List<LoginUser> users = service.ChooseUsers();
        for(LoginUser u : users){
            if(u.getUsername() == user.getUsername() & u.getPassword().equals(user.getPassword())) {
                tip = 1;
                //赋值与之对应
                user.setId(u.getId());
                user.setName(u.getName());
                //登录成功后把user传入session
                session.setAttribute("User",user);
            }
        }
        return tip;
    }

    //处理注册请求
    @RequestMapping(value = "/register.do",method = RequestMethod.POST)
    @ResponseBody
    public ModelAndView registerVerification(LoginUser user){
        ModelAndView mv = new ModelAndView();
        int num = service.addUser(user);
        mv.addObject("num",num);
        mv.setViewName("forward:/Main.jsp");
        return mv;
    }

    /*注销账号*/
    @RequestMapping(value = "/cancel.do")
    @ResponseBody
    public void doCancel(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.setAttribute("User",null);
    }

}
