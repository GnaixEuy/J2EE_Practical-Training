package com.lite.entity;

import com.mysql.cj.result.StringValueFactory;

public class Users {
    Integer Id;
    String Username;
    String Password;
    Integer balance;
    String Phone;

    //Get&Set

    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getUsername() {
        return Username;
    }

    public void setUsername(String username) {
        Username = username;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String password) {
        Password = password;
    }

    public Integer getBalance() {
        return balance;
    }

    public void setBalance(Integer balance) {
        this.balance = balance;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    //构造函数

    public Users(String username, String password, Integer balance, String phone) {
        super();
        Username = username;
        Password = password;
        this.balance = balance;
        Phone = phone;
    }

    public Users()
    {
        super();
    }

    //toString

    @Override
    public String toString() {
        return "Users{" +
                "Id=" + Id +
                ", Username='" + Username + '\'' +
                ", Password='" + Password + '\'' +
                ", balance=" + balance +
                ", Phone='" + Phone + '\'' +
                '}';
    }
}
