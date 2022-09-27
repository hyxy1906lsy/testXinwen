package com.hq.controller;

import com.hq.entity.fankui;
import com.hq.entity.gg;
import com.hq.service.IGgService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/gg")
public class ggController {
    @Autowired
    IGgService ggService;

    @RequestMapping("/AllGg")
    public String user(Map map){
        List<gg> list=ggService.AllGg();
        map.put("list",list);
        return "GG/allgg";
    }
    @RequestMapping("/AllGgu")
    public String useru(Map map){
        List<gg> list=ggService.AllGg();
        map.put("list",list);
        return "GG/allggu";
    }

    @RequestMapping("/AllF")
    public String allf(Map map){
        List<fankui> list=ggService.AllF();
        map.put("list",list);

        return "GG/allf";
    }

    @RequestMapping("/AddF")
    @ResponseBody
    public String AddF(String name1,String main){
        fankui f=new fankui();
        f.setName(name1);
        f.setMain(main);
        int i=ggService.AddF(f);
        if(i==1){
            return "Y";
        }
        return "N";
    }
    @RequestMapping("/AddG")
    @ResponseBody
    public String AddG(String name1,String main){
        Map map=new HashMap();
        map.put("name",name1);
        map.put("main",main);

        int i=ggService.AddG(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }
    @RequestMapping("/DelG")
    @ResponseBody
    public String DelG(String name1){
        Map map=new HashMap();
        map.put("name",name1);

        int i=ggService.DelG(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

}
