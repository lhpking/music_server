package pers.culushishui.dao.model;

import java.util.Date;

public class Message_center {
    private Integer messageCalssificationId;

    private Integer userId;

    private Date createdTime;

    private String massageContent;

    public Integer getMessageCalssificationId() {
        return messageCalssificationId;
    }

    public void setMessageCalssificationId(Integer messageCalssificationId) {
        this.messageCalssificationId = messageCalssificationId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Date createdTime) {
        this.createdTime = createdTime;
    }

    public String getMassageContent() {
        return massageContent;
    }

    public void setMassageContent(String massageContent) {
        this.massageContent = massageContent == null ? null : massageContent.trim();
    }
}