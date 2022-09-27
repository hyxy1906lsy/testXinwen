package com.hq.service;

import com.hq.entity.fankui;
import com.hq.entity.gg;

import java.util.List;
import java.util.Map;

public interface IGgService {
    public List<gg> AllGg();
    public int AddF(fankui f);
    public List<fankui> AllF();
    public int AddG(Map map);
    public int DelG(Map map);
}
