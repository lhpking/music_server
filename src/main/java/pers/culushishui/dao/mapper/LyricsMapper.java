package pers.culushishui.dao.mapper;

import pers.culushishui.dao.model.Lyrics;

public interface LyricsMapper {
    int insert(Lyrics record);

    int insertSelective(Lyrics record);
}