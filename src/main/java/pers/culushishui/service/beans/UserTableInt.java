package pers.culushishui.service.beans;

import pers.culushishui.dao.model.User;

import javax.servlet.http.HttpServletRequest;

public interface UserTableInt extends Base<User> {

    abstract Integer delectUser(Object object);
    abstract String login(Object object);

    abstract Integer register(Object object);

    abstract Object queryUserInformation(Object object);

    abstract Integer modifyUserPassword(Object object);

    abstract Integer modifyUserInformation(Object object);
    abstract String getUserAvatarAddress(Integer id);
    abstract Integer setUserAvatarAddress(String avatarAddress,Integer id);



}
