package Blog.Controller.ExceptionHandler;

import Blog.Exception.NoneException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class AllExceptionHandler {

    @ExceptionHandler(value = NoneException.class)
    public ModelAndView NoneException(Exception ex){
        ModelAndView mv = new ModelAndView();
        mv.addObject("exception",ex);
        mv.setViewName("allBook");
        return mv;
    }

    /*@ExceptionHandler(Exception.class)
    public void OtherException(){

    }*/

}
