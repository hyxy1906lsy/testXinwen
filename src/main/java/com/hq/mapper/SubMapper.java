package com.hq.mapper;

import com.hq.entity.sub;

import java.util.List;
import java.util.Map;

public interface SubMapper {
    public List<sub> AllSub();
    public int ReqSub(Map map);
    public int sp1(Map map);
    public int sp2(Map map);
}
