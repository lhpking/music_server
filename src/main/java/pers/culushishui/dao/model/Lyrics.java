package pers.culushishui.dao.model;

import java.util.Date;

public class Lyrics {
    private String songName;

    private Date updatedTime;

    private String lyricaddress;

    private Integer userId;

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName == null ? null : songName.trim();
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    public String getLyricaddress() {
        return lyricaddress;
    }

    public void setLyricaddress(String lyricaddress) {
        this.lyricaddress = lyricaddress == null ? null : lyricaddress.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }
}