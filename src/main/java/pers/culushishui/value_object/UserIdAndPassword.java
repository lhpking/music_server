package pers.culushishui.value_object;

public class UserIdAndPassword {
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    Integer id;
    String password;
}
