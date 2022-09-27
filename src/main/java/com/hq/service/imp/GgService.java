package com.hq.service.imp;

import com.hq.entity.fankui;
import com.hq.entity.gg;
import com.hq.mapper.GgMapper;
import com.hq.service.IGgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class GgService implements IGgService{
    @Autowired
    GgMapper ggMapper;
    @Override
    public List<gg> AllGg() {
        return ggMapper.AllGg();
    }

    @Override
    public int AddF(fankui f) {
         return ggMapper.AddF(f);
    }

    @Override
    public List<fankui> AllF() {
        return ggMapper.AllF();
    }

    @Override
    public int AddG(Map map) {
        return ggMapper.AddG(map);
    }

    @Override
    public int DelG(Map map) {
        return ggMapper.DelG(map);
    }
}
