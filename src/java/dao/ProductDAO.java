/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Product;

/**
 *
 * @author Admin
 */
public class ProductDAO {
        Connection connection;
    DBContext db;
    
      public ProductDAO() {
        try {
            //lay connection ra 
            db = new DBContext();
            connection = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("Loi : " + e);
        }
    }
      
      public ArrayList<Product> getAllProduct(){
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            String sql="select Product.productID, Product.productName,Product.amount, Product.price, Product.image, Product.discount from Product";
            PreparedStatement stm=connection.prepareStatement(sql);
            ResultSet rs= stm.executeQuery();
            while(rs.next()){
                int id=rs.getInt(1);
                String name=rs.getString(2);
                int amount=rs.getInt(3);
                int price=rs.getInt(4);
                String image=rs.getString(5);
                int discount=rs.getInt(6);
                list.add(new Product(id,name,amount,price,image,discount));
            }
        } catch (Exception e) {
            System.out.println("Error getPro: "+e.getMessage());
        }
        return list;
    }
    
          public ArrayList<Product> getNewProduct(){
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            String sql="select top 12 Product.productID, Product.productName,Product.amount, Product.price, Product.image, Product.discount from Product order by Product.DateAdd desc";
            PreparedStatement stm=connection.prepareStatement(sql);
            ResultSet rs= stm.executeQuery();
            while(rs.next()){
                int id=rs.getInt(1);
                String name=rs.getString(2);
                int amount=rs.getInt(3);
                int price=rs.getInt(4);
                String image=rs.getString(5);
                int discount=rs.getInt(6);
                list.add(new Product(id,name,amount,price,image,discount));
            }
        } catch (Exception e) {
            System.out.println("Error getPro: "+e.getMessage());
        }
        return list;
    }  
      
    public void insertProduct(int id, String name, int price, String image){
        ArrayList<Product> list = new ArrayList<>();
        try {
            String sql = "insert into Product values(?, ?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.setString(2, name);
            stm.setInt(3, price);
            stm.setString(4, image);
            stm.executeUpdate();
            stm.close();
        } catch (Exception e) {
        }
    }
    
    public void deleteProductById(int id){
        try {
            String delete="delete Product where productID='" + id + "'";
            PreparedStatement stm = connection.prepareStatement(delete);
            stm.execute(delete);
        } catch (Exception e) {
            System.out.println("Delete fail: "+e.getMessage());
        }
    }
}
