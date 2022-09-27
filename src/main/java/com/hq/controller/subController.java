package com.hq.controller;

import com.hq.entity.sub;
import com.hq.entity.user;
import com.hq.service.ISubService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/sub")
public class subController {
    @Autowired
    ISubService subService;

    @RequestMapping("/AllSub")
    public String user(Map map){
        List<sub> list=subService.AllSub();
        map.put("list",list);
        return "allsub";
    }

    @RequestMapping("/ReqSub")
    @ResponseBody
    public String user(String sub,String count,String reson,String money,String people, Map map){
        map.put("sub",sub);
        map.put("count",count);
        map.put("reson",reson);
        map.put("money",money);
        map.put("people",people);
        int i=subService.ReqSub(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }

    @RequestMapping("/shenpi1")
    @ResponseBody
    public String sp1(String name1,String YN){
        Map<String,String> map=new HashMap<String, String>();
        map.put("sub",name1);
        map.put("YN",YN);
        int i=subService.sp1(map);
        if(i==1){
            return "Y";
        }
        return "N";
    }
//
//    @RequestMapping("/shenpi1")
//    @ResponseBody
//    public String sp2(String name1){
//        Map<String,String> map=new HashMap<String, String>();
//        map.put("sub",name1);
//        int i=subService.sp2(map);
//        if(i==1){
//            return "Y";
//        }
//        return "N";
//    }
}
