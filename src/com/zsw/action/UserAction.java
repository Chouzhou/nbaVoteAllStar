package com.zsw.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.zsw.dao.UserInfDao;
import com.zsw.model.Login;

import java.util.List;
import java.util.Map;

/**
 * Created by Jack on 2015/12/18.
 */
public class UserAction extends ActionSupport {
    private Login login;

    public Login getLogin() {
        return login;
    }

    public void setLogin(Login login) {
        this.login = login;
    }

    public String ShowUser() throws Exception {//显示用户信息除管理员的action
        UserInfDao userinf = new UserInfDao();
        List<Login> l = userinf.ShowUserInf();
        if (l != null || l.size() == 0) {                                                //如果集合不为空
            Map session = ActionContext.getContext().getSession();
            //获得会话，用来保存当前全部用户的信息
            session.put("userInf", l);
            return SUCCESS;
        } else {
            return ERROR;                                            //验证失败返回字符串ERROR
        }
    }

    public String UpdateUser() throws Exception {
        Login l = new Login();
        l.setId(login.getId());
        l.setName(login.getName());
        l.setPassword(login.getPassword());
        //UserInfDao userInf =new UserInfDao().UpdateUserInf(l);
        UserInfDao userInf = new UserInfDao();
        boolean judge = userInf.UpdateUserInf(l);
        if (judge) {
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    /*public String DeleteUser() throws Exception {
//删除用户信息
        Login l = new Login();
        l.setId(login.getId());
        l.setName(login.getName());
        l.setPassword(login.getPassword());//将删除的用户信息赋给另一个Login类
        //UserInfDao userInf =new UserInfDao().UpdateUserInf(l);
        UserInfDao userInf = new UserInfDao();
        boolean judge = userInf.DeleteUserInf(l);//调用删除用户的方法
        if (judge) {
            return SUCCESS;//删除成功
        } else {
            return ERROR;
        }
    }*/
}
