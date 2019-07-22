package pers.culushishui.dao.mapper;

import pers.culushishui.dao.model.Song_list;

public interface Song_listMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Song_list record);

    int insertSelective(Song_list record);

    Song_list selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Song_list record);

    int updateByPrimaryKey(Song_list record);
}