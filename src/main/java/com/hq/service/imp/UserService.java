package com.hq.service.imp;

import com.hq.entity.user;
import com.hq.mapper.UserMapper;
import com.hq.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class UserService implements IUserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public int adminLog(Map map) {
        return userMapper.adminLog(map);
    }

    @Override
    public List<user> AllUser() {
        return userMapper.AllUser();
    }

    @Override
    public int addUser(user user) {
        return userMapper.addUser(user);
    }

    @Override
    public void UpA(Map map) {
        System.out.println(userMapper.UpA(map));
    }

    @Override
    public int UpU(Map map) {
        return userMapper.UpU(map);
    }

    @Override
    public int UserLog(Map map) {

        return userMapper.UserLog(map);
    }

    @Override
    public int DelU(Map map) {
        return userMapper.DelU(map);
    }

    @Override
    public int UpK(Map map) {
        return userMapper.UpK(map);
    }

    @Override
    public int UpX(Map map) {
        return userMapper.UpX(map);
    }


}
