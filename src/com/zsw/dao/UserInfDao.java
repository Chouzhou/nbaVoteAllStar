package com.zsw.dao;

import com.zsw.db.DBConn;
import com.zsw.model.Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

/**
 * Created by Jack on 2015/12/18.
 */
public class UserInfDao {
    Connection conn;

    //    public Login UpdateUserInf(){}
    public List<Login> ShowUserInf() {//显示普通用户信息
        try {
            conn = DBConn.getConn();                            //获取连接对象
            PreparedStatement pstmt = conn.prepareStatement("select * from login WHERE role=0");
            ResultSet rs = pstmt.executeQuery();
            List<Login> ar = new ArrayList<Login>();
            //执行查询，返回结果集
            while (rs.next()) {
                //返回结果不为空，表示有此用户信息
                Login login = new Login();
                //通过JavaBean对象保存值
                login.setId(rs.getInt("id"));
                login.setName(rs.getString("name"));
                login.setPassword(rs.getString("password"));
                login.setRole(rs.getBoolean("role"));
                ar.add(login);
                //返回已经设值的JavaBean对象
            }
            return ar;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } finally {
            DBConn.CloseConn();
        }
    }

    public boolean UpdateUserInf(Login login2) {
        try {
            conn = DBConn.getConn();
            PreparedStatement pstmt = conn.prepareStatement("update login set name=?,password=? where id=?");
            pstmt.setString(1, login2.getName());
            pstmt.setString(2, login2.getPassword());
            pstmt.setInt(3, login2.getId());
            pstmt.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            DBConn.CloseConn();
        }
    }

    public boolean DeleteUserInf(Login login) {
        try {
            conn = DBConn.getConn();
            PreparedStatement pstmt = conn.prepareStatement("delete from login where id=?");
            pstmt.setInt(1, login.getId());
            pstmt.execute();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            DBConn.CloseConn();
        }
    }
}