package pers.culushishui.service.beans.impl;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import pers.culushishui.dao.model.User;
import pers.culushishui.value_object.AccountAndPassword;
import pers.culushishui.value_object.UserIdAndPassword;
import pers.culushishui.value_object.UserInformation;
import sun.nio.cs.US_ASCII;

import static org.junit.Assert.*;

public class UserTableImplTest {

    @Test
    public void delectUser() {
        //ok
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
       System.out.println( userTable.delectUser(25));
    }

    @Test
    public void delectUser1() {
    }

    @Test
    public void login() {
    }

    @Test
    public void login1() {
        //ok
        //登录测试
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
        AccountAndPassword accountAndPassword = new AccountAndPassword();
        accountAndPassword.setUser("culushishui");
        accountAndPassword.setPassword("zcyzcyzcy1998");
        userTable.login(accountAndPassword);
        System.out.println("密码是" + userTable.login(accountAndPassword));
    }

    @Test
    public void register() {
        //ok
        //注册测试
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
        AccountAndPassword accountAndPassword = new AccountAndPassword();
        accountAndPassword.setUser("culushishui");
        accountAndPassword.setPassword("zcyzcyzcy1998");
        System.out.println("id为"+userTable.register(accountAndPassword));

    }

    @Test
    public void queryUserInformation() {
        //查询用户信息
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
        UserInformation userInformation = userTable.queryUserInformation(9);
       System.out.println( "昵称是"+userInformation.getNickname()+"个性签名是"+userInformation.getSignature());

    }

    @Test
    public void modifyUserPassword() {
        //ok
        //修改通过id修改用户密码
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
        UserIdAndPassword userIdAndPassword = new UserIdAndPassword();
        userIdAndPassword.setId(9);
        userIdAndPassword.setPassword("zxzxzx1998");
        System.out.println(userTable.modifyUserPassword(userIdAndPassword));

    }


    @Test
    public void modifyUserInformation() {
        //ok
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
        UserInformation userInformation = new UserInformation();
        userInformation.setSignature("逝去的风，我心先谁");
        userInformation.setNickname("猪猪好");
        System.out.println( userTable.modifyUserInformation(userInformation,9));
    }

    @Test
    public void selectIdByAccount() {
        //ok
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("beans_xml/UserTable.xml");
        UserTableImpl userTable = applicationContext.getBean("UserTableImp", UserTableImpl.class);
       System.out.println( userTable.selectIdByAccount("culushishui"));
    }

}