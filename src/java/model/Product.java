/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Product {
    private int productID;
    private String productName;
    private int amount;
    private Category category;
    private String description;
    private int price;
    private String image;
    private int discount;
    private int view;
    private String dateAdded;
    private int soldQuantity;

    public Product() {
    }

    public Product(int productID, String productName, int amount, String description, int price, String image, int discount) {
        this.productID = productID;
        this.productName = productName;
        this.amount = amount;
        this.description = description;
        this.price = price;
        this.image = image;
        this.discount = discount;
    }

    public Product(int id, String name, int amount, int price, int discount) {
        this.productID = id;
        this.productName = name;
        this.amount = amount;
        this.price = price;
        this.discount = discount;
    }

    public Product(int productID, String productName, int amount, Category category, String description, int price, String image, int discount, int view, String dateAdded, int soldQuantity) {
        this.productID = productID;
        this.productName = productName;
        this.amount = amount;
        this.category = category;
        this.description = description;
        this.price = price;
        this.image = image;
        this.discount = discount;
        this.view = view;
        this.dateAdded = dateAdded;
        this.soldQuantity = soldQuantity;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public String getDateAdded() {
        return dateAdded;
    }

    public void setDateAdded(String dateAdded) {
        this.dateAdded = dateAdded;
    }

    public int getSoldQuantity() {
        return soldQuantity;
    }

    public void setSoldQuantity(int soldQuantity) {
        this.soldQuantity = soldQuantity;
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

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }   

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getDiscount() {
        return discount;
    }

    public void setDiscount(int discount) {
        this.discount = discount;
    }

    @Override
    public String toString() {
        return "Product{" + "productID=" + productID + ", productName=" + productName + ", amount=" + amount + ", price=" + price + ", image=" + image + ", discount=" + discount + '}';
    }

   


    
}