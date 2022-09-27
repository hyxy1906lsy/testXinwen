package com.hq.controller;

import com.hq.entity.*;
import com.hq.service.IGgService;
import com.hq.service.ISchoolService;
import com.hq.service.ISubService;
import com.hq.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/login")
public class loginController {
    @Autowired
    IUserService userService;
    @Autowired
    IGgService ggService;
    @Autowired
    ISchoolService schoolService;
    @Autowired
    ISubService subService;
    @RequestMapping("/adminlog")
    @ResponseBody
    public  String admin(String name1,String psw,String sel){
        if(sel=="1"||sel.equals("1")){
            Map<String,String> map=new HashMap<String,String>();
            map.put("name1",name1);
            map.put("psw",psw);
            int i=userService.adminLog(map);
            if(i==1){
                return "Y";
            }
            return "N";
        }else{
            Map<String,String> map=new HashMap<String,String>();
            map.put("name1",name1);
            map.put("psw",psw);
            int i=userService.UserLog(map);
            if(i==1){
                return "UY";
            }
            return "UN";
        }
    }

    @RequestMapping("/adm")
    public String v(String name1,Map map){
        map.put("admin",name1);
        return "admin";
    }
    @RequestMapping("/use")
    public String vb(String name1,Map map){
        map.put("user",name1);
        return "user";
    }

    @RequestMapping("/AllUser")
    public String user(Map map){
        List<user> list=userService.AllUser();
        map.put("list",list);
        return "user/alluser";
    }

    @RequestMapping("/AllYuan")
    public String AllYuan(Map map){
        List<user> list=userService.AllUser();
        map.put("list",list);
        return "allyuangong";
    }

    @RequestMapping("/zhuce")
    @ResponseBody
    public String user(String name1,String psw,String psw2,String sex,String phone,String year){
        if(psw==psw2||psw.equals(psw2)) {
            user user = new user();
            user.setName(name1);
            user.setPsw(psw);
            user.setSex(sex);
            user.setPhone(phone);
            user.setYear(year);
            int i = userService.addUser(user);
            if(i==1){
                return "Y";
            }
            return "N";
        }else{
            return "NN";
        }
    }

    @RequestMapping("/UpA")
    @ResponseBody
    public String UpA(String name1,String oldP,String newP,String newP2){
        if(newP==newP2||newP.equals(newP2)) {

            Map<String, String> map = new HashMap<String, String>();
            map.put("name1", name1);
            map.put("psw", oldP);
            int i = userService.adminLog(map);
            if (i == 1) {
                Map map1 = new HashMap();
                map1.put("name1", name1);
                map1.put("newP", newP);

                userService.UpA(map1);
                return "Y";
            }
            return "N";
        }else{
            return "NN";
        }
    }

    @RequestMapping("/UpU")
    @ResponseBody
    public String UpU(String name1,String name2,String psw,String sex,String year,String phone){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        map.put("name2",name2);
        map.put("psw",psw);
        map.put("sex",sex);
        map.put("year",year);
        map.put("phone",phone);
        int i=userService.UpU(map);
        if(i==1){
            return "Y";
        }
        System.out.println("i:"+i);
        return "N";

    }

    @RequestMapping("/DelUserByid")
    @ResponseBody
    public String DelUserByid(String name1){
        System.out.println(name1);
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        int i=userService.DelU(map);
        if(i==1){
            return "Y";
        }
        System.out.println(name1);
        return "N";

    }

    @RequestMapping("/DelU")
    @ResponseBody
    public String DelU(String name1){
        System.out.println(name1);
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        int i=userService.DelU(map);
        if(i==1){
            return "Y";
        }
        System.out.println(name1);
        return "N";

    }

    @RequestMapping("/UpK")
    @ResponseBody
    public String UpK(String name1,String bt,String ot,String bumen,String zhuangtai){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        map.put("bt",bt);
        map.put("ot",ot);
        map.put("bumen",bumen);
        map.put("zhuangtai",zhuangtai);

        int i=userService.UpK(map);
        if(i==1){
            return "Y";
        }
        System.out.println("i:"+i);
        return "N";

    }

    @RequestMapping("/UpX")
    @ResponseBody
    public String UpX(String name1,String money,String moneyjj,String moneygz,String moneyk){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name1",name1);
        map.put("money",money);
        map.put("moneyjj",moneyjj);
        map.put("moneygz",moneygz);
        map.put("moneyk",moneyk);

        int i=userService.UpX(map);
        if(i==1){
            return "Y";
        }
        System.out.println("i:"+i);
        return "N";

    }

    @RequestMapping("/AllX")
    public String ax(Map map){
        List<user> list=userService.AllUser();
        map.put("list",list);
        List<gg> list1=ggService.AllGg();
        map.put("list1",list1);
        List<school> list2=schoolService.alls();
        map.put("list2",list2);
        List<sub> list3=subService.AllSub();
        map.put("list3",list3);
        List<fankui> list4=ggService.AllF();
        map.put("list4",list4);
        return "allxinxi";

    }

}

