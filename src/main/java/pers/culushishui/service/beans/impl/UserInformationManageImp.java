package pers.culushishui.service.beans.impl;

import pers.culushishui.service.beans.UserInformationManageInt;
import pers.culushishui.value_object.AccountAndPassword;
import pers.culushishui.value_object.OlderPasswordAndNewPassword;
import pers.culushishui.value_object.SessionInformation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class UserInformationManageImp implements UserInformationManageInt {
    public void setUserTableImpl(UserTableImpl userTableImpl) {
        this.userTableImpl = userTableImpl;
    }

    UserTableImpl userTableImpl;
    SessionManageImpl sessionManage;

    public void setSessionManage(SessionManageImpl sessionManage) {
        this.sessionManage = sessionManage;
    }

    @Override
    public String Login(AccountAndPassword accountAndPassword, HttpServletRequest request) {
        //登录判断
        if (userTableImpl.login(accountAndPassword).equals(accountAndPassword.getPassword())) {
            //保存一个HttpSession
            if (request.getRequestedSessionId() == null) {
                //创建一个新的HttpSession
                HttpSession httpSession = request.getSession();
                SessionInformation sessionInformation = new SessionInformation();
                sessionInformation.setSession_id(httpSession.getId());
                sessionInformation.setId(userTableImpl.selectIdByAccount(accountAndPassword.getUser()));
                sessionInformation.setLogin(true);
                //下面开始保存
                sessionManage.setSessionInformation(sessionInformation, httpSession);
                sessionManage.addSession(httpSession);
            }
            return "Home";
        } else {
            return "LoginError";
        }
    }

    @Override
    public String register(AccountAndPassword accountAndPassword) {
        if(userTableImpl.login(accountAndPassword).equals(" ")){
            //没有被注册
            userTableImpl.register(accountAndPassword);
            //注册成功
            return "Login";
        }else {
            //注册了
            return "LoginError";
        }
    }

    @Override
    public boolean modifyUserPassword(OlderPasswordAndNewPassword olderPasswordAndNewPassword) {
        //返回的是被修改的数据id
       if( userTableImpl.modifyUserPassword(olderPasswordAndNewPassword)!=null){
           return true;
       }
        return false;
    }





}
