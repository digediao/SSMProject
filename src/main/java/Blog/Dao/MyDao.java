package Blog.Dao;

import Blog.domain.LoginUser;

import java.util.List;

public interface MyDao {
    List<LoginUser> selectUsers();
    int insertUser(LoginUser user);
}
