package pers.culushishui.service.beans.impl;

import pers.culushishui.service.beans.SessionManageInt;
import pers.culushishui.value_object.SessionInformation;

import javax.servlet.http.HttpSession;
import java.util.*;

public class SessionManageImpl implements SessionManageInt {
    static Map<Map<Date, String>, HttpSession> sessionEntity = new HashMap<>();

    /**
     * 创建清理session的线程
     * @param timer
     */
    public SessionManageImpl(Timer timer) {
        timer.schedule(new TimerTask() {
            public void run() {
                System.out.println("-------延迟5000毫秒，每1000*60毫秒执行一次--------");
                delectSession();
            }
        }, 5000, 1000 * 60);
    }

    /**
     * 添加一个httpsession,去管理
     *
     * @param session
     */
    @Override
    public void addSession(HttpSession session) {
        Map<Date, String> map = new HashMap<>();
        map.put(new Date(), session.getId());
        System.out.println("将要保存的session_id为"+session.getId());
        sessionEntity.put(map, session);
        System.out.println("保存后查询集合的大小"+sessionEntity.keySet().size());
    }

    /**
     * 用于删除过时的httpsession
     */
    @Override
    public void delectSession() {
        //获取当前的时间
        Date currentTime = new Date();
        for (Map<Date, String> map : sessionEntity.keySet()) {
            for (Date olderTime : map.keySet()) {
                if (((currentTime.getTime() - olderTime.getTime()) / (24 * 60 * 60 * 1000)) > 10) {
                    /*sessionEntity.remove(map);*/
                }
            }

        }

    }

    /**
     * 获取指定httpsession的信息
     * @param session_id
     * @return
     */
    @Override
    public SessionInformation getSessionInformation(String session_id) {
        SessionInformation sessionInformation = new SessionInformation();
        System.out.println("正在查询seeion");
        try {
            System.out.println("要遍历的的集合的大小"+sessionEntity.keySet().size());
            for (Map<Date, String> map : sessionEntity.keySet()) {
                System.out.println("外层循环");
                for (Date data : map.keySet()) {
                    System.out.println("内层循环");
                    if (map.get(data).equals(session_id)) {
                        HttpSession session = sessionEntity.get(map);
                        sessionInformation.setId((Integer) session.getAttribute("id"));
                        sessionInformation.setLogin((Boolean) session.getAttribute("isLogin"));
                        sessionInformation.setSession_id(session.getId());
                        System.out.println("seeion查询成功");
                        return sessionInformation;
                    }
                    System.out.println("正在遍历session信息");
                    System.out.println("session_id是"+map.get(data));
                }


            }
            sessionInformation.setLogin(false);
            return sessionInformation;

        }catch (Exception e){
            System.out.println("发生异常了");
            sessionInformation.setLogin(false);
            return sessionInformation;
        }
    }

    /**
     * 为指定的httpsession，保存信息
     * @param sessionInformation
     * @param session
     */
    @Override
    public void setSessionInformation(SessionInformation sessionInformation, HttpSession session) {
        session.setAttribute("id", sessionInformation.getId());
        session.setAttribute("isLogin", sessionInformation.isLogin());


    }
}