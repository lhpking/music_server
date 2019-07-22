package pers.culushishui.value_object;

import java.util.Date;

public class SavaSong {
    String songName;
    Date updatedTime;
    Integer userId;
    String songAddress;
    Long numberOfVissits;

    public String getSongName() {
        return songName;
    }

    public void setSongName(String songName) {
        this.songName = songName;
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

    public String getSongAddress() {
        return songAddress;
    }

    public void setSongAddress(String songAddress) {
        this.songAddress = songAddress;
    }

    public Long getNumberOfVissits() {
        return numberOfVissits;
    }

    public void setNumberOfVissits(Long numberOfVissits) {
        this.numberOfVissits = numberOfVissits;
    }
}
