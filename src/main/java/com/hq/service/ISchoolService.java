package com.hq.service;

import com.hq.entity.school;

import java.util.List;
import java.util.Map;

public interface ISchoolService {
    public List<school> alls();
    public List<school> allsx();
    public int baoxiu(Map map);
    public int sp(Map map);
}
