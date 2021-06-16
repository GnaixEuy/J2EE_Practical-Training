package com.lite.bean;

import java.util.Date;

/**
 * 订单实体
 *
 * @author GnaixEuy
 * @date 2021/6/17 00:00
 */
public class OrderBean {
    private Integer id;
    private String productName;
    private Date puchaseTime;
    private Double puchasingPrice;

    public OrderBean(Integer id, String productName, Date puchaseTime, Double puchasingPrice) {
        this.id = id;
        this.productName = productName;
        this.puchaseTime = puchaseTime;
        this.puchasingPrice = puchasingPrice;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Date getPuchaseTime() {
        return puchaseTime;
    }

    public void setPuchaseTime(Date puchaseTime) {
        this.puchaseTime = puchaseTime;
    }

    public Double getPuchasingPrice() {
        return puchasingPrice;
    }

    public void setPuchasingPrice(Double puchasingPrice) {
        this.puchasingPrice = puchasingPrice;
    }
}
