package pers.culushishui.service.beans;

import pers.culushishui.value_object.AccountAndPassword;
import pers.culushishui.value_object.OlderPasswordAndNewPassword;

import javax.servlet.http.HttpServletRequest;

public interface UserInformationManageInt {
    String   Login (AccountAndPassword accountAndPassword, HttpServletRequest request);
    String register(AccountAndPassword accountAndPassword);
    boolean modifyUserPassword(OlderPasswordAndNewPassword olderPasswordAndNewPassword);
}
