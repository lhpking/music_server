package pers.culushishui.dao.model;

public class User {
    private Integer id;

    private String nickname;

    private String userAccount;

    private String userAccountPassword;

    private String signature;

    private String avatarAddress;

    private String createSonglist;

    private String collectSonglist;

    private String createSong;

    private String collectSong;

    private String messageManagerIdGather;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getUserAccount() {
        return userAccount;
    }

    public void setUserAccount(String userAccount) {
        this.userAccount = userAccount == null ? null : userAccount.trim();
    }

    public String getUserAccountPassword() {
        return userAccountPassword;
    }

    public void setUserAccountPassword(String userAccountPassword) {
        this.userAccountPassword = userAccountPassword == null ? null : userAccountPassword.trim();
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature == null ? null : signature.trim();
    }

    public String getAvatarAddress() {
        return avatarAddress;
    }

    public void setAvatarAddress(String avatarAddress) {
        this.avatarAddress = avatarAddress == null ? null : avatarAddress.trim();
    }

    public String getCreateSonglist() {
        return createSonglist;
    }

    public void setCreateSonglist(String createSonglist) {
        this.createSonglist = createSonglist == null ? null : createSonglist.trim();
    }

    public String getCollectSonglist() {
        return collectSonglist;
    }

    public void setCollectSonglist(String collectSonglist) {
        this.collectSonglist = collectSonglist == null ? null : collectSonglist.trim();
    }

    public String getCreateSong() {
        return createSong;
    }

    public void setCreateSong(String createSong) {
        this.createSong = createSong == null ? null : createSong.trim();
    }

    public String getCollectSong() {
        return collectSong;
    }

    public void setCollectSong(String collectSong) {
        this.collectSong = collectSong == null ? null : collectSong.trim();
    }

    public String getMessageManagerIdGather() {
        return messageManagerIdGather;
    }

    public void setMessageManagerIdGather(String messageManagerIdGather) {
        this.messageManagerIdGather = messageManagerIdGather == null ? null : messageManagerIdGather.trim();
    }
}