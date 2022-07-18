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

    public void insertProduct(int id, String name, int price, String image) {
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

    public void deleteProductById(int id) {
        try {
            String delete = "delete from Product where Product.productID='" + id + "'";
            PreparedStatement stm = connection.prepareStatement(delete);
            stm.execute(delete);
        } catch (Exception e) {
            System.out.println("Delete fail: " + e.getMessage());
        }
    }

    public void updateProductById(int id) {
        try {
            String update = "update Product set productName ='"+ "' where Product.productID='"+ id +"'";

        } catch (Exception e) {
        }
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


    public Product getProductByID(int ProductId){
    String query ="select * from Product where ProductId=?"; 
    try {
           
            PreparedStatement stm = connection.prepareStatement(query);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
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


