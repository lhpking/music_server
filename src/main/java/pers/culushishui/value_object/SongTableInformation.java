package pers.culushishui.value_object;

public class SongTableInformation {
    String  playAmount;
    String pictureAddress;
    String author;
    String songTableName;

    public String getPlayAmount() {
        return playAmount;
    }

    public void setPlayAmount(String playAmount) {
        this.playAmount = playAmount;
    }

    public String getPictureAddress() {
        return pictureAddress;
    }

    public void setPictureAddress(String pictureAddress) {
        this.pictureAddress = pictureAddress;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getSongTableName() {
        return songTableName;
    }

    public void setSongTableName(String songTableName) {
        this.songTableName = songTableName;
    }

    public String getPlayAddress() {
        return playAddress;
    }

    public void setPlayAddress(String playAddress) {
        this.playAddress = playAddress;
    }

    String playAddress;
}
