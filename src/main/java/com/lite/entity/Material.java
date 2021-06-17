package com.lite.entity;

public class Material {
    Integer material_Id;
    String material_Name;
    Integer material_price;
    Integer material_store;
    //Get方法
    public int getMaterial_Id() {
        return material_Id;
    }

    public void setMaterial_Id(int material_Id) {
        this.material_Id = material_Id;
    }

    public String getMaterial_Name() {
        return material_Name;
    }

    //Set方法
    public void setMaterial_Name(String material_Name) {
        this.material_Name = material_Name;
    }

    public int getMaterial_price() {
        return material_price;
    }

    public void setMaterial_price(int material_price) {
        this.material_price = material_price;
    }

    public int getMaterial_store() {
        return material_store;
    }

    public void setMaterial_store(int material_store) {
        this.material_store = material_store;
    }

    //构造方法
    public Material()
    {
        super();
    }
    public Material(Integer id,String name,Integer price,Integer store)
    {
        super();
        this.material_Id=id;
        this.material_Name=name;
        this.material_price=price;
        this.material_store=store;
    }

    //toString方法
    @Override
    public String toString() {
        return "Material{" +
                "material_Id=" + material_Id +
                ", material_Name='" + material_Name + '\'' +
                ", material_price=" + material_price +
                ", material_store=" + material_store +
                '}';
    }
}
