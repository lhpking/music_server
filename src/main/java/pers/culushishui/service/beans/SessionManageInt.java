package pers.culushishui.service.beans;

import pers.culushishui.value_object.SessionInformation;

import javax.servlet.http.HttpSession;

public interface SessionManageInt {
   void addSession(HttpSession session);
   void delectSession();
  /* void Timer();*/
   SessionInformation getSessionInformation(String session_id);
   void setSessionInformation(SessionInformation sessionInformation,HttpSession session);



}
