package Blog.Service.Impl;

import Blog.Service.MyService;
import org.springframework.stereotype.Service;
import Blog.Dao.MyDao;
import Blog.domain.LoginUser;

import javax.annotation.Resource;
import java.util.List;

@Service
public class MyServiceImpl implements MyService {

    @Resource
    private MyDao dao;

    @Override
    public int addUser(LoginUser user) {
        int num = dao.insertUser(user);
        return num;
    }

    @Override
    public List<LoginUser> ChooseUsers() { return dao.selectUsers(); }

}
