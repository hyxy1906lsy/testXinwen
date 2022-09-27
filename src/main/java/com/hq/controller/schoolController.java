package com.hq.controller;

import com.hq.entity.school;
import com.hq.service.ISchoolService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/school")
public class schoolController {
    @Autowired
    ISchoolService schoolService;

    @RequestMapping("/AllS")
    public String alls(Map map){
        List<school> list=schoolService.alls();
        map.put("list",list);
        return "school/allsch";
    }

    @RequestMapping("/AllSx")
    public String allsx(Map map){
        List<school> list=schoolService.allsx();
        map.put("list",list);
        return "school/schoolRes";
    }

    @RequestMapping("/baoxiu")
    @ResponseBody
    public String baoxiu(String name1,String xnum,String reson,String name2, Map map){
        map.put("name1",name1);
        map.put("xnum",xnum);
        map.put("reson",reson);
        map.put("name2",name2);
        int i=schoolService.baoxiu(map);
        System.out.println(i);
        if(i==1){
            return "Y";
        }
        return "N";
    }

    @RequestMapping("/sp")
    @ResponseBody
    public String sp(String name1){
        Map<String,String> map =new HashMap<String,String>();
        map.put("name1",name1);
        int i=schoolService.sp(map);
        System.out.println(i);
        if(i==1){
            return "Y";
        }
        return "N";
    }

}
