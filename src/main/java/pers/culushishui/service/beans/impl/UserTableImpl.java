package pers.culushishui.service.beans.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import pers.culushishui.service.beans.UserTableInt;
import pers.culushishui.dao.mapper.UserMapper;
import pers.culushishui.dao.model.User;
import pers.culushishui.value_object.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;


public class UserTableImpl implements UserTableInt {
    /**
     * 这个域时sqlsession，生产的UserMapper实现类
     */
    SqlSession sqlSession;

    public UserTableImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;

    }

    private UserMapper getUserMapper() {
        return sqlSession.getMapper(UserMapper.class);
    }

    SessionManageImpl sessionManage;

    public void setSessionManage(SessionManageImpl sessionManage) {
        this.sessionManage = sessionManage;
    }

    /**
     * 永久的删除用户
     *
     * @param object
     * @return 现在不清楚放回的是什么值
     */
    @Override
    public Integer delectUser(Object object) {
        getUserMapper().deleteByPrimaryKey((int) object);
        //这个方法用到的比较少，不扩展
        return null;
    }

    @Override
    public String login(Object object) {
        return null;
    }

    @Override
    public Integer register(Object object) {
        return null;
    }

    @Override
    public Object queryUserInformation(Object object) {
        return null;
    }

    @Override
    public Integer modifyUserPassword(Object object) {
        return null;
    }

    @Override
    public Integer modifyUserInformation(Object object) {
        return null;
    }

    /**
     * 根据用户的id返回头像的地址
     *
     * @param id
     * @return
     */
    @Override
    public String getUserAvatarAddress(Integer id) {
        User user = getUserMapper().selectByPrimaryKey(id);
        return user.getAvatarAddress();
    }

    /**
     * 更改用户头像的地址，根据传入的id属性
     *
     * @param avatarAddress
     * @param id
     * @return 返回用户的id属性
     */
    @Override
    public Integer setUserAvatarAddress(String avatarAddress, Integer id) {
        User user = new User();
        user.setId(id);
        user.setAvatarAddress(avatarAddress);
        getUserMapper().updateByPrimaryKeySelective(user);
        return user.getId();
    }


    /**
     * 通过主键来查询密码
     *
     * @param id
     * @return 密码
     */
    public String login(Integer id) {
        User user = getUserMapper().selectByPrimaryKey(id);
        return user.getUserAccountPassword();
    }

    /**
     * 通过账号,查询出密码
     *
     * @param accountAndPassword
     * @return 密码
     */
    public String login(AccountAndPassword accountAndPassword) {
       try{
           //返回账户密码
           Integer id = getUserMapper().selectByAccount(accountAndPassword.getUser());
           return (getUserMapper().selectByPrimaryKey(id)).getUserAccountPassword();
       }catch (Exception e){
           System.out.println("产生异常了");
           return null;
       }

    }

    public String login(AccountAndPassword accountAndPassword, HttpServletRequest request) {
        Integer userId;
        if (login(accountAndPassword).equals(accountAndPassword.getPassword())) {
//登录成功，记录session
            System.out.println("查密码成功密码是"+login(accountAndPassword));
            HttpSession httpSession = request.getSession();
            SessionInformation sessionInformation = new SessionInformation();
            sessionInformation.setId(selectIdByAccount(accountAndPassword.getUser()));
            sessionInformation.setLogin(true);
            sessionInformation.setSession_id(request.getRequestedSessionId());
            sessionManage.setSessionInformation(sessionInformation,httpSession);
            sessionManage.addSession(httpSession);
            return "Home";
        } else {
            return "LoginError";
        }

    }

    /**
     * 注册用户，必须需要账号，密码
     *
     * @param accountAndPassword 封装好账户和密码对象
     * @return 返回user账户的id
     */
    public Integer register(AccountAndPassword accountAndPassword) {
        User user = new User();
        user.setUserAccount(accountAndPassword.getUser());
        user.setUserAccountPassword(accountAndPassword.getPassword());
        getUserMapper().insertSelective(user);
        System.out.println("----");
        return user.getId();
    }


    /**
     * 通过user表的主键来查询用户信息
     *
     * @param id
     * @return 返回一个map集合
     */
    public UserInformation queryUserInformation(Integer id) {
        User user = getUserMapper().selectByPrimaryKey(id);
        UserInformation userInformation = new UserInformation();
        userInformation.setNickname(user.getNickname());
        userInformation.setSignature(user.getSignature());
        return userInformation;

    }

    /**
     * 通过id，来更该用户密码
     *
     * @param userIdAndPassword 封装好的id和密码对象
     * @return user表主键id
     */
    public Integer modifyUserPassword(UserIdAndPassword userIdAndPassword) {
        User user = new User();
        user.setId(userIdAndPassword.getId());
        user.setUserAccountPassword(userIdAndPassword.getPassword());
        getUserMapper().updateByPrimaryKeySelective(user);
        return user.getId();
    }

    public String modifyUserPassword(OlderPasswordAndNewPassword olderPasswordAndNewPassword, HttpServletRequest c) {
        if(sessionManage.getSessionInformation(c.getRequestedSessionId()).isLogin()){
            //先验证旧密码的正确性
            SessionInformation sessionInformation = sessionManage.getSessionInformation(c.getRequestedSessionId());
            if (selectIdByAccount(olderPasswordAndNewPassword.getOldpassword()) == sessionInformation.getId()) {
                //旧密码验证正确
                UserIdAndPassword userIdAndPassword = new UserIdAndPassword();
                userIdAndPassword.setPassword(olderPasswordAndNewPassword.getPassword());
                userIdAndPassword.setId(sessionInformation.getId());

                if (modifyUserPassword(userIdAndPassword) == null) {
                    return "密码修改成功";
                } else {
                    return "密码写入数据库失败";
                }
            } else {
                return "旧密码错误";
            }
        }else {
            System.out.println("session为空");
            return "请先登录";
        }


    }


    /**
     * 随便你修改什么信息，只要制定这个值就行了
     *
     * @param
     * @return user信息主键id
     */
    public Integer modifyUserInformation(UserInformation userInformation, Integer id
    ) {
        User user = new User();
        user.setId(id);
        user.setNickname(userInformation.getNickname());
        user.setSignature(userInformation.getSignature());
        getUserMapper().updateByPrimaryKeySelective(user);
        return user.getId();
    }
    public String modifyUserInformation(UserInformation userInformation, HttpServletRequest httpServletRequest
    ) {
        if(sessionManage.getSessionInformation(httpServletRequest.getRequestedSessionId()).isLogin()){
            Integer id =  sessionManage.getSessionInformation(httpServletRequest.getRequestedSessionId()).getId();

            if( modifyUserInformation(userInformation,id)!=null){
                return "信息修改成功";
            }else {
                return "信息修改失败";
            }
        }else {
            System.out.println("session为空");
            return "请先登录";
        }

    }


    /**
     * 想user表保存一条完整的数据,
     *
     * @param t
     * @param <T> 这个T继承了User，懂么
     * @return 返回该项数据的主键
     */
    @Override
    public <T> Integer save(T t) {
        UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
        return userMapper.insert((User) t);
    }

    /**
     * 通过账号来返回主键的id
     *
     * @param account
     * @return
     */
    public Integer selectIdByAccount(String account) {
        return getUserMapper().selectByAccount(account);
    }
    public String modifyUserAvatarAddress(CommonsMultipartFile commonsMultipartFile, HttpServletRequest httpServletRequest) throws IOException {
        if(sessionManage.getSessionInformation(httpServletRequest.getRequestedSessionId()).isLogin()){
            String name = commonsMultipartFile.getOriginalFilename();
            Integer id =  sessionManage.getSessionInformation(httpServletRequest.getRequestedSessionId()).getId();
            String realPath= httpServletRequest.getSession().getServletContext().getRealPath("/");
            System.out.println(realPath);
            File  file = new File(realPath+"static/temporary/pictures/"+name);
            commonsMultipartFile.transferTo(file);
            if(setUserAvatarAddress("/static/temporary/pictures/"+name,id)!=null){
                return "修改成功";
            }else {
                return "修改失败";
            }
        }else {
            System.out.println("session为空");
            return "请先登录";
        }


    }
    public UserCenterInformation getUserCenterInformation(HttpServletRequest httpServletRequest){
        //打印sessin_id的值
        System.out.println("session_id是"+httpServletRequest.getRequestedSessionId());
        if(sessionManage.getSessionInformation(httpServletRequest.getRequestedSessionId()).isLogin()){
            Integer id =sessionManage.getSessionInformation(httpServletRequest.getRequestedSessionId()).getId();
            UserCenterInformation userCenterInformation= new UserCenterInformation();
            userCenterInformation.setAvatarDddress(getUserAvatarAddress(id));
            userCenterInformation.setNickname(queryUserInformation(id).getNickname());
            return  userCenterInformation;
        }else {
            System.out.println("session为空");
            UserCenterInformation userCenterInformation= new UserCenterInformation();
            userCenterInformation.setAvatarDddress("static/images/songs/tubiao.jpeg");
            userCenterInformation.setNickname("请登录");
            return  userCenterInformation;
        }




    }


}
