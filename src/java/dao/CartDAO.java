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
import model.Category;
import model.Product;
import model.ProductCart;
import model.User;


/**
 *
 * @author Dung
 */
public class CartDAO {
    Connection connection;
    DBContext db;

    public CartDAO() {
        try {
            //lay connection ra 
            db = new DBContext();
            connection = db.getConnection();
            System.out.println("ok");
        } catch (Exception e) {
            System.out.println("Loi : " + e);
        }
    }
    
    public ArrayList<ProductCart> getProductFromCartByUserID(User u) {
        String sql = "select p.productID ,p.productName,c.Quantity, c.Price, p.[Image] from dbo.Cart c, dbo.[User] u, dbo.[Product] p\n"
                + "where c.ProductID = p.productID and c.UserID = u.UserID and u.UserID = ?";
        ArrayList<ProductCart> productCartList = new ArrayList<>();
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, u.getUserID());
            //tạo bảng chứa giá trị của câu lệnh
            ResultSet rs = pre.executeQuery();
            // lặp theo từng dòng
            while (rs.next()) {
                //lấy giá trị theo từng cột]
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                int quantity = rs.getInt(3);
                int price = rs.getInt(4);
                String image = rs.getString(5);
                Product p = new Product(productID, productName, 0, new Category(), "", 0, image, 0, 0, "", 0);
                productCartList.add(new ProductCart(u, p, quantity, price));
            }

        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("getProductFromCartByUserID:" + mess);
        }
        return productCartList;
    }
    
    public void insertToCart(Product p, User u, int quantity) {
        String sql = "insert into  dbo.Cart (UserID, ProductID, Quantity, Price)\n"
                + "values (? , ?, ?, ?)";
        try {
            // tạo khay chứa câu lệnh 
            int price = p.getPrice();
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, u.getUserID());
            pre.setInt(2, p.getProductID());
            pre.setInt(3, quantity);
            pre.setInt(4, p.getPrice() * quantity);
            int status = pre.executeUpdate();
        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("Insert to cart: " + mess);
        }
    }
    
    public boolean checkProductExist(Product p, User u) {
        String sql = "select * from dbo.Cart where UserID = ? and ProductID = ?";
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, u.getUserID());
            pre.setInt(2, p.getProductID());
            //tạo bảng chứa giá trị của câu lệnh
            ResultSet rs = pre.executeQuery();
            // lặp theo từng dòng
            while (rs.next()) {
                //lấy giá trị theo từng cột
                return true;
            }

        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("Check Account:" + mess);
        }
        return false;
    }
    
    public void updateQuantityAndPrice(Product p, User u, int quantity) {
        String sql = "UPDATE [dbo].[Cart] \n"
                + "   SET [Quantity] = ?\n"
                + "      ,[Price] = ?\n"
                + " WHERE Cart.UserID = ? and Cart.ProductID = ?";
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, quantity);
            pre.setDouble(2, p.getPrice() * quantity);
            pre.setInt(3, u.getUserID());
            pre.setInt(4, p.getProductID());
            pre.executeUpdate();
        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("UpdateQuantityAndPrice: " + mess);
        }
    }
    
    public int getQuantityProduct(Product product, User u) {
        String sql = "select Cart.Quantity from dbo.Cart\n"
                + "where Cart.UserID = ? and Cart.ProductID = ?";
        int amount = 0;
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, u.getUserID());
            pre.setInt(2, product.getProductID());
            //tạo bảng chứa giá trị của câu lệnh
            ResultSet rs = pre.executeQuery();
            // lặp theo từng dòng
            while (rs.next()) {
                //lấy giá trị theo từng cột
                amount = rs.getInt(1);
            }

        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("Check Account:" + mess);
        }
        return amount;
    }
    

    public static void main(String[] args) {
        CartDAO u = new CartDAO();
        System.out.println("" + u);
    }
}
