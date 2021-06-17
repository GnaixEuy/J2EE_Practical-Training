package com.lite.entity;

public class Products {
    Integer Id;
    String product_Name;
    Integer product_price;
    Integer product_store;

    //get和set
    public Integer getId() {
        return Id;
    }

    public void setId(Integer id) {
        Id = id;
    }

    public String getProduct_Name() {
        return product_Name;
    }

    public void setProduct_Name(String product_Name) {
        this.product_Name = product_Name;
    }

    public Integer getProduct_price() {
        return product_price;
    }

    public void setProduct_price(Integer product_price) {
        this.product_price = product_price;
    }

    public Integer getProduct_store() {
        return product_store;
    }

    public void setProduct_store(Integer product_store) {
        this.product_store = product_store;
    }

    //构造方法
    public Products(Integer id, String product_Name, Integer product_price, Integer product_store) {
        super();
        this.product_Name = product_Name;
        this.product_price = product_price;
        this.product_store = product_store;
    }
    public Products()
    {
        super();
    }

    //toString

    @Override
    public String toString() {
        return "Products{" +
                "Id=" + Id +
                ", product_Name='" + product_Name + '\'' +
                ", product_price=" + product_price +
                ", product_store=" + product_store +
                '}';
    }
}
