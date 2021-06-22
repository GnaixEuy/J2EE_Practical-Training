package com.lite.bean;

import java.util.Date;

/**
 * 订单实体
 *
 * @author GnaixEuy
 * @date 2021/6/17 00:00
 */
public class OrderBean {
    private String id;
    private String productName;
    private Date puchaseTime;
    private Double puchasingPrice;
    private String orderUserId;
    private String status;

    public OrderBean(String id, String productName, Date puchaseTime, Double puchasingPrice, String orderUserId, String status) {
        this.id = id;
        this.productName = productName;
        this.puchaseTime = puchaseTime;
        this.puchasingPrice = puchasingPrice;
        this.orderUserId = orderUserId;
        this.status = status;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getOrderUserId() {
        return orderUserId;
    }

    public void setOrderUserId(String orderUserId) {
        this.orderUserId = orderUserId;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
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
