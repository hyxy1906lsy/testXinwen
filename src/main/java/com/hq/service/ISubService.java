package com.hq.service;

import com.hq.entity.sub;
import com.hq.entity.user;

import java.util.List;
import java.util.Map;

public interface ISubService {
    public List<sub> AllSub();
    public int ReqSub(Map map);
    public int sp1(Map map);
//    public int sp2(Map map);
}
