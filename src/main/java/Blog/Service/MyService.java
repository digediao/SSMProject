package Blog.Service;

import Blog.domain.LoginUser;

import java.util.List;

public interface MyService {
    List<LoginUser> ChooseUsers();
    int addUser(LoginUser user);
}
