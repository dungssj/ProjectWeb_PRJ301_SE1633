/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;


/**
 *
 * @author Dung
 */
public class User {
    private int userID;
    private String userName;
    private String password;
    private String email;
    private String address;
    private String gender;
    private String dob;
    private String accountType;
    private String phoneNumber;
    private String city;
    private String postcode;
 
    public User() {
    }

    public User(int userID, String userName, String password, String email, String address, String gender, String dob, String accountType, String phoneNumber, String city, String postcode) {
        this.userID = userID;
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.address = address;
        this.gender = gender;
        this.dob = dob;
        this.accountType = accountType;
        this.phoneNumber = phoneNumber;
        this.city = city;
        this.postcode = postcode;
       
    }
    
    public User(int userID, String userName, String password, String email, String address, String dob, String phoneNumber) {
        this.userID = userID;
        this.userName = userName;
        this.password = password;
        this.email = email;
        this.address = address;
        this.dob = dob;
        this.phoneNumber = phoneNumber;  
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String isGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAccountType() {
        return accountType;
    }

    public void setAccountType(String accountType) {
        this.accountType = accountType;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }
    
    
    
}
