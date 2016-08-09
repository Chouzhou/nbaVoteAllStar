package com.zsw.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zsw.dao.LoginDao;
import com.zsw.model.Login;

import java.util.Map;

/**
 * Created by Jack on 2015/12/15.
 */
public class LoginAction extends ActionSupport {
    private Login login;
    private String message;

    //处理用户请求的 execute 方法
    public String execute() throws Exception {
        //该类为项目与数据的接口（DAO接口），用于处理数据与数据库表的一些操作
        LoginDao loginDao = new LoginDao();
        Login l = loginDao.checkLogin(login.getName(), login.getPassword());
        if (l != null) {                                                //如果登录成功
            Map session = ActionContext.getContext().getSession();
            //获得会话，用来保存当前登录用户的信息
            session.put("Login", l);
            //把获取的对象保存在 Session 中
            //return SUCCESS;											//验证成功返回字符串SUCCESS，此时 Session 中已经有用户对象
            //登录成功，判断角色为管理员还是学生，true表示管理员，false表示学生
            if (l.getRole()) {
                return "admin";            //管理员身份登录
            } else {
                return "user";        //学生身份登录
            }
        } else {
            return ERROR;                                            //验证失败返回字符串ERROR
        }
    }

    //验证登录名和密码是否为空
    /*public void validate() {
        if (login.getName() == null || login.getName().equals("")) {
            this.addFieldError("name", "用户名不能为空！");
        } else if (login.getPassword() == null || login.getPassword().equals("")) {
            this.addFieldError("password", "密码不能为空！");
        }
    }*/

    //属性 login 的 get/set 方法
    public Login getLogin() {
        return login;
    }

    public void setLogin(Login login) {
        this.login = login;
    }

    //属性 message 的 get/set 方法
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
