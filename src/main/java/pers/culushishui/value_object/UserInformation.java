package pers.culushishui.value_object;

/**
 * 这个累类对应网页上的UserCenter中的修改用户信息这一项
 */
public class UserInformation  {
    String nickname;
    String signature;

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }
}
