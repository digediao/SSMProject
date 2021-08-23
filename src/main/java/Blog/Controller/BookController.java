package Blog.Controller;


import Blog.Exception.NoneException;
import Blog.Service.BookService;
import Blog.domain.Books;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping(value = "book")
public class BookController {
    @Resource
    private BookService bookService;

    //展示所有的书籍
    @RequestMapping(value = "allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    //添加
    @RequestMapping(value = "toAddBook")
    public String toAddBook(){
        return "addBook";
    }
    @RequestMapping(value = "addBook",method = RequestMethod.POST)
    public String AddBook(Books book){
        bookService.addBook(book);
        return "redirect:/book/allBook";
    }

    //更新
    @RequestMapping("toUpdate")
    public String toUpdate(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("books",books);
        return "update";
    }
    @RequestMapping(value = "update",method = RequestMethod.POST)
    public String update(Books books){
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    //删除
    @RequestMapping("delete")
    public String delete(int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    //查询
    @RequestMapping("queryBookName")
    public String queryBookName(String queryBookName,Model model){
        Books books = bookService.queryBookName(queryBookName);
        List<Books> queryBooks = new ArrayList<>();
        queryBooks.add(books);

        if(books == null){
            queryBooks = bookService.queryAllBook();
            model.addAttribute("error","未查到任何信息");
        }
        model.addAttribute("list",queryBooks);

        return "allBook";
    }

    /*错误Exception处理器*/
    @RequestMapping("Exception")
    public void Exception() throws Exception {
        throw new NoneException("错误通知");
    }

}
