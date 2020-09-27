package cn.itcast.service;

import cn.itcast.User;
import cn.itcast.dao.UserDao;

import java.util.List;

public class UserService {
    UserDao dao = new UserDao();
    public List<User>  findAllUser(){
        return dao.findALL();
    }
}
