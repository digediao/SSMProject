package Blog.Dao;

import Blog.domain.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {
    int addBook(Books books);
    int deleteBookById(int id);
    int updateBook(Books books);
    Books queryBookById(int id);
    List<Books> queryAllBook();
    Books queryBookName(@Param("bookName") String bookName);
}
