package pers.culushishui.value_object;

public class AccountAndPassword {
    String user;
    String password;
    public void setUser(String user) {
        this.user = user;
    }

    public String getUser() {
        return user;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {

        return "密码是"+getPassword()+"账号是"+getUser();

    }
}
