package com.hq.service;

import com.hq.entity.user;

import java.util.List;
import java.util.Map;

public interface IUserService {
    public int adminLog(Map map);
    public List<user> AllUser();
    public int addUser(user user);
    public void UpA(Map map);
    public int UpU(Map map);
    public int UserLog(Map map);
    public int DelU(Map map);
    public int UpK(Map map);
    public int UpX(Map map);
}
