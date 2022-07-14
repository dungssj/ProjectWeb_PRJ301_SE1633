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
import java.util.List;
import model.Product;

/**
 *
 * @author longc
 */
public class ProductDAO {

    Connection cnn = null;//Kết nối đến DB
    PreparedStatement ps = null;//Thực thi các câu lệnh SQL
    ResultSet rs = null;//Lưu trữ và xử lý dữ liệu

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select Product.productID, Product.productName, Product.amount, Product.Price, Product.Image from Product";
        try {
            cnn = (new DBContext()).getConnection();
            ps = cnn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                String amount = rs.getString(3);
                Double Price = rs.getDouble(4);
                String Image = rs.getString(5);
                list.add(new Product(productID, productName, amount, Price, Image));

            }
//        try {
//            stm = cnn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
//            String strSelect = "select * from Product";
//            rs = stm.executeQuery(strSelect);
//            while (rs.next()) {
//                String id = rs.getString(1);
//                String name = rs.getString(2);
//                String amount = rs.getString(3);
//                Double price = rs.getDouble(4);
//                //String image=rs.getString(5);
//                list.add(new Product(id, name, amount, price));
//            }
        } catch (Exception e) {
            System.out.println("getAllProduct Error:" + e.getMessage());
        }
        return list;
    }

    public int getTotalProduct() {
        String query = "select count(*) from Product";
        try {
            cnn = new DBContext().getConnection();
            ps = cnn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public List<Product> pagingProduct(int index) {
        List<Product> list = new ArrayList();
        String query = "select Product.productID, Product.productName, Product.amount, Product.Price, Product.Image from Product\n"
                + "ORDER BY productID \n"
                + "OFFSET ? ROWS FETCH NEXT 8 ROWS ONLY";
        try {
            cnn = (new DBContext()).getConnection();
            ps = cnn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 8);
            rs = ps.executeQuery();
            while (rs.next()) {
                int productID = rs.getInt(1);
                String productName = rs.getString(2);
                String amount = rs.getString(3);
                Double Price = rs.getDouble(4);
                String Image = rs.getString(5);
                list.add(new Product(productID, productName, amount, Price, Image));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        List<Product> list = dao.pagingProduct(1);
        for (Product o : list) {
            System.out.println(o);
        }
//        int count = dao.getTotalProduct();
//            System.out.println(count);;
    }

}
