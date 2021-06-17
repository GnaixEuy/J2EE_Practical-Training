package com.lite.bean;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author GnaixEuy
 * @date 2021/6/17 08:20
 */
public class ProductBean {
    private Integer id;
    private String productName;
    private Double productPrice;
    private Integer productStore;
    private String productType;
    //存入数据库交给productMaterials
    private String productMaterials;
    //程序运行中交给productMaterialsList
    private List<String> productMaterialsList;//配料

    public ProductBean(Integer id, String productName, Double productPrice, Integer productStore, String productType, String productMaterials) {
        this.id = id;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productStore = productStore;
        this.productType = productType;
        this.productMaterials = productMaterials;
        this.productMaterialsList = new ArrayList<>();
        String[] productMaterialStrings = productMaterials.split(",");
        productMaterialsList.addAll(Arrays.asList(productMaterialStrings));
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

    public Double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Double productPrice) {
        this.productPrice = productPrice;
    }

    public Integer getProductStore() {
        return productStore;
    }

    public void setProductStore(Integer productStore) {
        this.productStore = productStore;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    /**
     * @return String
     * @deprecated 请使用getProductMaterialsList来获取原料的list
     */
    public String getProductMaterials() {
        return productMaterials;
    }

    public void setProductMaterials(String productMaterials) {
        this.productMaterials = productMaterials;
        this.productMaterialsList.clear();
        String[] productMaterialStrings = this.productMaterials.split(",");
        this.productMaterialsList.addAll(Arrays.asList(productMaterialStrings));
    }

    public List<String> getProductMaterialsList() {
        return productMaterialsList;
    }

    public void setProductMaterialsList(List<String> productMaterialsList) {
        this.productMaterialsList = productMaterialsList;
        this.productMaterials = "";
        for ( String s : productMaterialsList ) {
            this.productMaterials += s;
            if ( !s.equals(productMaterialsList.get(productMaterialsList.size() - 1)) ) {
                this.productMaterials += ",";
            }
        }
    }
}
