package pers.culushishui.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import pers.culushishui.service.beans.impl.UserTableImpl;
import pers.culushishui.value_object.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.IOException;
import java.util.ArrayList;

@Controller
public class Login {
    private static Logger logger = LogManager.getLogger(Login.class.getName());

    /**
     * 调出登录页面
     *
     * @return
     */
    @RequestMapping("login")
    public String login() {
        return "Login";
    }

    //调出userCenter页面
    @RequestMapping("userCenter")
    public String mapper() {
        return "UserCenter";
    }
    //调出userCenter页面
    @RequestMapping("home")
    public String mapper2() {
        return "Home";
    }
    //调出userCenter页面
    @RequestMapping("search")
    public String mapper3() {
        return "Search";
    } //调出userCenter页面
    @RequestMapping("show")
    public String mapper4() {
        return "Show";
    }
    //调出userCenter页面
    @RequestMapping("songList")
    public String mapper5() {
        return "songList";
    }


    /**
     * 登录核对密码
     *
     * @param accountAndPassword
     * @return
     */
    @RequestMapping("cp")
    public String checkPassword(AccountAndPassword accountAndPassword, HttpServletRequest request) {
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
        return userTableImpl.login(accountAndPassword,request);
    }

    /**
     * 注册账号
     *
     * @param accountAndPassword
     * @return
     */
    @RequestMapping("rig")
    public String rigister(@RequestBody AccountAndPassword accountAndPassword) {
        System.out.println("请求信息是"+accountAndPassword.getUser()+"sdsdfe"+accountAndPassword.getPassword());
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
        if (userTableImpl.login(accountAndPassword)==null) {
            //没有被注册

            userTableImpl.register(accountAndPassword);
            System.out.println("请求注册");
            //注册成功
            return "Login";
        } else {
            //注册了
            return "LoginError";
        }

    }

    /**
     * 修改密码
     *
     * @param olderPasswordAndNewPassword
     * @return
     */
    @ResponseBody
    @RequestMapping("mup")
    public String modifyUserPassword(@RequestBody OlderPasswordAndNewPassword olderPasswordAndNewPassword, HttpServletRequest HttpServletRequest) {
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
        return userTableImpl.modifyUserPassword(olderPasswordAndNewPassword, HttpServletRequest);


    }

    /**
     * 查询用户信息
     *
     * @param id
     * @return
     */
    @ResponseBody
    @RequestMapping("qui")
    public UserInformation queryUserInformation(Integer id) {
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
        return userTableImpl.queryUserInformation(id);

    }

    @ResponseBody
    @RequestMapping("mui")
    public String modifyUserInformation(@RequestBody UserInformation userInformation,HttpServletRequest httpServletRequest) {
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
      return   userTableImpl.modifyUserInformation(userInformation,httpServletRequest);
    }

    /*   public void sda(HttpServletRequest request){
           request.getSession()
       }*/

    @ResponseBody
    @RequestMapping("mua")
    public String modifyUserAvatar(@RequestParam("avatar") CommonsMultipartFile commonsMultipartFile,HttpServletRequest httpServletRequest) throws IOException {
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
        return  userTableImpl.modifyUserAvatarAddress(commonsMultipartFile,httpServletRequest);
    }

    /**
     * 列出用户分享的歌单
     *
     * @return
     */
    @ResponseBody
    @RequestMapping("lustl")
    public ArrayList<SongTableInformation> listUserSongTableList() {
        //下面模拟发送的信息
        ArrayList<SongTableInformation> arrayList = new ArrayList<>();
        for (int i = 1; i < 10; i++) {
            SongTableInformation songTableInformation = new SongTableInformation();
            songTableInformation.setAuthor("朱聪");
            songTableInformation.setPictureAddress("/static/images/songs/renzhendexue.jpg");
            songTableInformation.setPlayAddress("/play");
            songTableInformation.setPlayAmount("10");
            songTableInformation.setSongTableName("我想你");
            arrayList.add(songTableInformation);
        }
        return arrayList;
    }

    public static <T> T getEntity(String xmlAddress, Class<T> t, String beanId) {
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlAddress);
        return applicationContext.getBean(beanId, t);
    }

    @ResponseBody
    @RequestMapping("guci")
    public UserCenterInformation getUserCenterInformation(HttpServletRequest request){
        UserTableImpl userTableImpl = getEntity("beans_xml/UserTable.xml", UserTableImpl.class, "UserTableImp");
        return  userTableImpl.getUserCenterInformation(request);

    }


}

