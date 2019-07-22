package pers.culushishui.value_object;

public class SessionInformation {
    //httpsession的唯一id
    String session_id;
    //这个账户id
    Integer id;
    //是否登录过了
    boolean isLogin;

    public String getSession_id() {
        return session_id;
    }

    public void setSession_id(String session_id) {
        this.session_id = session_id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public boolean isLogin() {
        return isLogin;
    }

    public void setLogin(boolean login) {
        isLogin = login;
    }
}
