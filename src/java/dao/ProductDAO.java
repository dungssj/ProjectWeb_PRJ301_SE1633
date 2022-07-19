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
import model.ProductCart;
import model.User;

/**
 *
 * @author Admin
 */
public class ProductDAO {

    Connection connection;
    PreparedStatement stm = null;//Thực thi các câu lệnh SQL
    ResultSet rs = null;//Lưu trữ và xử lý dữ liệu

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

    public ArrayList<Product> getAllProduct() {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            String sql = "select Product.productID, Product.productName,Product.amount,Product.Description, Product.Price, Product.Image, Product.Discount from Product";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                int amount = rs.getInt(3);
                String des = rs.getString(4);
                int price = rs.getInt(5);
                String image = rs.getString(6);
                int discount = rs.getInt(7);
                list.add(new Product(productID, productName, amount, des, price, image, discount));
            }
        } catch (Exception e) {
            System.out.println("Error getPro: " + e.getMessage());
        }
        return list;
    }
    
    public Product getProductById(String productid) {
        Product p = new Product();
        String sql = "select Product.productID, Product.productName,Product.amount, Product.Price, Product.Discount from dbo.Product where Product.productID = ?";
        try {
            // tạo khay chứa câu lệnh 
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setString(1, productid);
            //tạo bảng chứa giá trị của câu lệnh
            ResultSet rs = pre.executeQuery();
            // lặp theo từng dòng
            while (rs.next()) {
                //lấy giá trị theo từng cột
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int amount = rs.getInt(3);
                int price = rs.getInt(4);
                int discount = rs.getInt(5);
                p = new Product(id,name,amount,price,discount);
            }

        } catch (Exception e) {
            String mess = e.toString();
            System.out.println("Get account:" + mess);
        }
        return p;
    }

    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<User>();
        try {
            String sql = "select e.UserID, e.UserName, e.Password, e.Email, e.Address, e.DOB, e.PhoneNumber from dbo.[User] e";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int userID = rs.getInt(1);
                String userName = rs.getString(2);
                String Password = rs.getString(3);
                String Email = rs.getString(4);
                String address = rs.getString(5);
                String DOB = rs.getString(6);
                String phone = rs.getString(7);
                list.add(new User(userID, userName, Password, Email, address, DOB, phone));
            }
        } catch (Exception e) {
            System.out.println("Error getPro: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Product> getNewProduct() {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            String sql = "select top 12 Product.productID, Product.productName,Product.amount,Product.Description, Product.Price, Product.Image, Product.Discount from Product order by Product.[Date Added] desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int amount = rs.getInt(3);
                String des = rs.getString(4);
                int price = rs.getInt(5);
                String image = rs.getString(6);
                int discount = rs.getInt(7);
                list.add(new Product(id, name, amount, des, price, image, discount));
            }
        } catch (Exception e) {
            System.out.println("Error getPro: " + e.getMessage());
        }
        return list;
    }

    public ArrayList<Product> getBestSellerProduct() {
        ArrayList<Product> list = new ArrayList<Product>();
        try {
            String sql = "select top 4 Product.productID, Product.productName,Product.amount,Product.Description, Product.Price, Product.Image, Product.Discount from Product order by Product.SoldQuantity desc";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                int amount = rs.getInt(3);
                String des = rs.getString(4);
                int price = rs.getInt(5);
                String image = rs.getString(6);
                int discount = rs.getInt(7);
                list.add(new Product(id, name, amount, des, price, image, discount));
            }
        } catch (Exception e) {
            System.out.println("Error getPro: " + e.getMessage());
        }
        return list;
    }

    public void insertProductToCart(int userid, int productid, int amount, int unitprice) {
        try {
            String sql = "insert into Cart values(?, ?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, userid);
            stm.setInt(2, productid);
            stm.setInt(3, amount);
            stm.setInt(4, amount*unitprice);
            stm.executeUpdate();
            stm.close();
        } catch (Exception e) {
        }
    }
    
    public int getIdUser() {
        int i=0;
        try {
            String sql = "select u.UserID from [User] u";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                i=rs.getInt(1); 
            }
        } catch (Exception e) {
            System.out.println("Error getPro: " + e.getMessage());
        }
        return i;
    }
    
    

    public int deleteProductById(int id) {
        int i = 0;
        try {
            String delete = "delete from Product where Product.productID=?";
            PreparedStatement stm = connection.prepareStatement(delete);
            stm.setInt(1, id);
            i = stm.executeUpdate();
        } catch (Exception e) {
            System.out.println("Delete fail: " + e.getMessage());
        }
        return i;
    }

    public int updateProductById(int id, String name, int amount, int price, int discount) {
        int i = 0;
        try {
            String update = "update Product set productName =?,amount=?, Price=?, Discount=? where Product.productID=?";
            PreparedStatement stm = connection.prepareStatement(update);
            stm.setInt(1, id);
            stm.setString(2, name);
            stm.setInt(3, amount);
            stm.setInt(4, price);
            stm.setInt(5, discount);
            i = stm.executeUpdate();
        } catch (Exception e) {
            System.out.println("Update fail: " + e.getMessage());
        }
        return i;
    }

    public int getTotalProduct() {
        String query = "select count(*) from Product";
        try {

            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public ArrayList<Product> pagingProduct(int index) {
        ArrayList<Product> list = new ArrayList();
        String query = "select Product.productID, Product.productName, Product.amount, Product.Description, Product.price, Product.image ,Product.discount from Product\n"
                + "ORDER BY productID \n"
                + "OFFSET ? ROWS FETCH NEXT 8 ROWS ONLY";
        try {

            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, (index - 1) * 8);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                int amount = rs.getInt(3);
                String des = rs.getString(4);
                int price = rs.getInt(5);
                String image = rs.getString(6);
                int discount = rs.getInt(7);
                list.add(new Product(productID, productName, amount, des, price, image, discount));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<Product> pagingAdminPage(int index) {
        ArrayList<Product> list = new ArrayList();
        String query = "select Product.productID, Product.productName, Product.amount, Product.Description, Product.price, Product.image ,Product.discount from Product\n"
                + "ORDER BY productID \n"
                + "OFFSET ? ROWS FETCH NEXT 12 ROWS ONLY";
        try {

            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, (index - 1) * 12);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                int amount = rs.getInt(3);
                String des = rs.getString(4);
                int price = rs.getInt(5);
                String image = rs.getString(6);
                int discount = rs.getInt(7);
                list.add(new Product(productID, productName, amount, des, price, image, discount));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        ArrayList<Product> list = dao.pagingProduct(1);
        for (Product o : list) {
            System.out.println(o);
        }
//        int count = dao.getTotalProduct();
//            System.out.println(count);;
    }

    public Product getProductByID(int ProductId) {
        String query = "select Product.productID, Product.productName,Product.amount,Product.Description, Product.Price, Product.Image, Product.Discount from Product where ProductId=?";
        try {

            PreparedStatement stm = connection.prepareStatement(query);
            stm.setInt(1, ProductId);
            ResultSet rs = stm.executeQuery();
            if (rs.next()) {
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                int amount = rs.getInt(3);
                String des = rs.getString(4);
                int price = rs.getInt(5);
                String image = rs.getString(6);
                int discount = rs.getInt(7);
                return new Product(productID, productName, amount, des, price, image, discount);
            }
        } catch (Exception e) {
            System.out.println("Error getPro: " + e.getMessage());
        }
        return null;
        }
       
    }
