package com.hq.mapper;

import com.hq.entity.school;
import com.hq.entity.sub;

import java.util.List;
import java.util.Map;

public interface SchoolMapper {
    public List<school> alls();
    public List<school> allsx();
    public int baoxiu(Map map);
    public int sp(Map map);
}
