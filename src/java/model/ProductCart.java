/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author longc
 */
    public class ProductCart {
    public int amount;
    public Product product;

    public ProductCart(int amount, Product product) {
        this.amount = amount;
        this.product = product;
    }

    public ProductCart() {
    }
    public void incrementAmount(){
    this.amount++;
    }
}
