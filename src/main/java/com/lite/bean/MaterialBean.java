package com.lite.bean;

/**
 * @author GnaixEuy
 * @date 2021/6/20 19:37
 */
public class MaterialBean {
    private Integer materialId;
    private String materialName;
    private Double materialPrice;
    private Integer materialStore;

    public MaterialBean(Integer materialId, String materialName, Double materialPrice, Integer materialStore) {
        this.materialId = materialId;
        this.materialName = materialName;
        this.materialPrice = materialPrice;
        this.materialStore = materialStore;
    }

    public MaterialBean(Integer materialId) {
        this.materialId = materialId;
    }

    public Integer getMaterialId() {
        return materialId;
    }

    public void setMaterialId(Integer materialId) {
        this.materialId = materialId;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public Double getMaterialPrice() {
        return materialPrice;
    }

    public void setMaterialPrice(Double materialPrice) {
        this.materialPrice = materialPrice;
    }

    public Integer getMaterialStore() {
        return materialStore;
    }

    public void setMaterialStore(Integer materialStore) {
        this.materialStore = materialStore;
    }
}
