package pers.culushishui.dao.model;

import java.util.Date;

public class Song {
    private Integer songId;

    private String songName;

    private String format;

    private Date updatedTime;

    private Integer userId;

    private String iconAddress;

    private String photoAddress;

    private String songAddress;

    private String numberOfVisits;

    public Integer getSongId() {
        return songId;
    }

    public void setSongId(Integer songId) {
        this.songId = songId;
    }

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName == null ? null : songName.trim();
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format == null ? null : format.trim();
    }

    public Date getUpdatedTime() {
        return updatedTime;
    }

    public void setUpdatedTime(Date updatedTime) {
        this.updatedTime = updatedTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getIconAddress() {
        return iconAddress;
    }

    public void setIconAddress(String iconAddress) {
        this.iconAddress = iconAddress == null ? null : iconAddress.trim();
    }

    public String getPhotoAddress() {
        return photoAddress;
    }

    public void setPhotoAddress(String photoAddress) {
        this.photoAddress = photoAddress == null ? null : photoAddress.trim();
    }

    public String getSongAddress() {
        return songAddress;
    }

    public void setSongAddress(String songAddress) {
        this.songAddress = songAddress == null ? null : songAddress.trim();
    }

    public String getNumberOfVisits() {
        return numberOfVisits;
    }

    public void setNumberOfVisits(String numberOfVisits) {
        this.numberOfVisits = numberOfVisits == null ? null : numberOfVisits.trim();
    }
}