package pers.culushishui.dao.model;

import java.util.Date;

public class Song_list {
    private Integer id;

    private String name;

    private String iconAddress;

    private Integer userId;

    private Date createdTime;

    private Long numberOfVisits;

    private String songsLlst;

    private String description;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getIconAddress() {
        return iconAddress;
    }

    public void setIconAddress(String iconAddress) {
        this.iconAddress = iconAddress == null ? null : iconAddress.trim();
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

    public Long getNumberOfVisits() {
        return numberOfVisits;
    }

    public void setNumberOfVisits(Long numberOfVisits) {
        this.numberOfVisits = numberOfVisits;
    }

    public String getSongsLlst() {
        return songsLlst;
    }

    public void setSongsLlst(String songsLlst) {
        this.songsLlst = songsLlst == null ? null : songsLlst.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }
}