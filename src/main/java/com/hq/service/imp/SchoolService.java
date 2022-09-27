package com.hq.service.imp;

import com.hq.entity.school;
import com.hq.mapper.SchoolMapper;
import com.hq.service.ISchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class SchoolService implements ISchoolService {
    @Autowired
    SchoolMapper schoolMapper;


    @Override
    public List<school> alls() {
        return schoolMapper.alls();
    }

    @Override
    public List<school> allsx() {
        return schoolMapper.allsx();
    }

    @Override
    public int baoxiu(Map map) {
        return schoolMapper.baoxiu(map);
    }

    @Override
    public int sp(Map map) {
        return schoolMapper.sp(map);
    }
}
