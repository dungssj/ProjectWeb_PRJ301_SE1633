/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import model.Product;
import model.User;

/**
 *
 * @author Dung
 */
public class UserDAO {
    Connection connection;
    DBContext db;

    public UserDAO() {
        try {
            //lay connection ra 
            db = new DBContext();
            connection = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("Loi : " + e);
        }
    }
    
    public boolean checkAccount(String username, String password) {
        String sql = "select * from dbo.[User] where username = ? and password = ?";
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, username);
            pre.setString(2, password);
            //tạo bảng chứa giá trị của câu lệnh
            ResultSet rs = pre.executeQuery();
            // lặp theo từng dòng
            while (rs.next()) {
                //lấy giá trị theo từng cột
                return true;
            }

        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("" + mess);
        }
        return false;
    }
    
    public User getAccount(String username) {
        User u = new User();
        String sql = "select * from dbo.[User] where username = ?";
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, username);
            //tạo bảng chứa giá trị của câu lệnh
            ResultSet rs = pre.executeQuery();
            // lặp theo từng dòng
            while (rs.next()) {
                //lấy giá trị theo từng cột
                SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String password = rs.getString(3);
                String email = rs.getString(4);
                String address = rs.getString(5);
                boolean genderBoolean = rs.getBoolean(6);
                String gender = "";
                // Xu li gender thanh nam hoac nu
                if(genderBoolean) {
                    gender += "Male";
                } else {
                    gender += "Female";
                }
                Date dob = rs.getDate(7);
                String dobString = sdf.format(dob);
                String accountType = rs.getString(8);
                String phoneNumber = rs.getString(9);
                String city = rs.getString(10);
                String postCode = rs.getString(11);
                u = new User(id, name, password, email, address, gender, dobString, accountType, phoneNumber, city, postCode);
            }

        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("" + mess);
        }
        return u;
    }
    
    public static void main(String[] args) {
        UserDAO u = new UserDAO();
        System.out.println(""+u);
    }
    
    
   
}
