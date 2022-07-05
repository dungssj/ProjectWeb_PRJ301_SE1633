/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DBconnect;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import product.product;

/**
 *
 * @author Admin
 */
public class productDAO extends DBcontact {

    Connection cnn;
    Statement stm;
    ResultSet rs;
    DBcontact db;

    public productDAO() {
        try {
            //lay connection ra
            db = new DBcontact();
            cnn = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("Erorr: " + e.getMessage());
        }
    }

    public ArrayList<product> getAll() {
        ArrayList<product> list = new ArrayList<>();
        try {
            String sql = "select * from Product";
            PreparedStatement stm = cnn.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                list.add(new product(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getString(4)));
            }
        } catch (Exception e) {
            System.out.println("Error get all department!!!");
        }
        return list;
    }

    public void insertData(product pro) {
        try {
            //stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
            String strSelect = "insert into dbo.Product values(? , ?, ?, ?)";
            PreparedStatement prstm = cnn.prepareStatement(strSelect);
            prstm.setInt(1, pro.getProductId());
            prstm.setString(2, pro.getName());
            prstm.setDouble(3, pro.getPrice());
            prstm.setString(4, pro.getDescription());
            prstm.executeUpdate();
        } catch (Exception e) {
            System.out.println("insertData error: " + e.getMessage());
        }
    }
    
    public List<product> getProductByCustomer(String username){
        ArrayList<product> list = new ArrayList<>();
        try {
            String sql = "select Product.ProductID, Product.ProductName, Product.Price * from Product where Product.CustomerName='?'";
            PreparedStatement stm=cnn.prepareStatement(sql);
            stm.setString(4, username);
            ResultSet rs=stm.executeQuery();
            while(rs.next()){
                list.add(new product(rs.getInt(1),rs.getString(2),rs.getInt(3),rs.getString(4)));
            }
        } catch (Exception e) {
            System.out.println("Get product by customer error: "+ e.getMessage());
        }
        return list;
    }

}
