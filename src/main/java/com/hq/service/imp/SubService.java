package com.hq.service.imp;

import com.hq.entity.sub;
import com.hq.entity.user;
import com.hq.mapper.SubMapper;
import com.hq.service.ISubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SubService implements ISubService{
    @Autowired
    SubMapper subMapper;

    public List<sub> AllSub(){
        return subMapper.AllSub();
    }

    @Override
    public int ReqSub(Map map) {
        return subMapper.ReqSub(map);
    }

    @Override
    public int sp1(Map map) {
        return subMapper.sp1(map);
    }
//
//    @Override
//    public int sp2(Map map) {
//        return subMapper.sp2(map);
//    }
}
