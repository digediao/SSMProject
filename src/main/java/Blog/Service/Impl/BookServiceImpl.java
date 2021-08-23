package Blog.Service.Impl;

import Blog.Dao.BookMapper;
import Blog.Service.BookService;
import Blog.domain.Books;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BookServiceImpl implements BookService {

    /*service调用dao层*/
    @Resource
    private BookMapper bookMapper;

    @Override
    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    @Override
    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    @Override
    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    @Override
    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    @Override
    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    @Override
    public Books queryBookName(String bookName) {
        return bookMapper.queryBookName(bookName);
    }
}
