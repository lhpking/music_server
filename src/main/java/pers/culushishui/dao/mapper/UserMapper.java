package pers.culushishui.dao.mapper;

import pers.culushishui.dao.model.User;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);
   /* void deleteByPrimaryKey(Integer id);*/

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);
    int selectByAccount(String accound);
}