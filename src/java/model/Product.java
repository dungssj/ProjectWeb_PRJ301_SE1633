/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author longc
 */
public class Product {

    private int productID;
    private String productName;
    private String amount;
    private double Price;
    private String Image;

    public Product() {
    }

    public Product(int productID, String productName, String amount, double Price, String Image) {
        this.productID = productID;
        this.productName = productName;
        this.amount = amount;
        this.Price = Price;
        this.Image = Image;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public double getPrice() {
        return Price;
    }

    public void setPrice(double Price) {
        this.Price = Price;
    }

    public String getImage() {
        return Image;
    }

    public void setImage(String Image) {
        this.Image = Image;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", amount=" + amount + ", Price=" + Price + ", Image=" + Image + '}';
    }

}
