package pers.culushishui.dao.mapper;

import pers.culushishui.dao.model.Message_manage;

public interface Message_manageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Message_manage record);

    int insertSelective(Message_manage record);

    Message_manage selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Message_manage record);

    int updateByPrimaryKey(Message_manage record);
}