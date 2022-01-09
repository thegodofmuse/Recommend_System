package com.example.managerpart.entity;
import java.util.Date;

public class Product {
    private int pID;
    private String productName;
    private String productTitle;
    private String productDesc;
    private int productPrice;
    private String productImage;
    private String publiser;
    private Date publishTime;
    private int proudctFlag;
    private int productCategoryID;

    public int getpID(){
        return pID;
    }
    public void setpID(int pID){
        this.pID = pID;
    }

    public String getProductName(){
        return productName;
    }
    public void setProductName(String productName){
        this.productName = productName;
    }

    public String getProductTitle(){
        return productTitle;
    }
    public void setProductTitle(String productTitle) {
        this.productTitle = productTitle;
    }

    public String getProductDesc(){return productDesc;}
    public void setProductDesc(String productDesc) {
        this.productDesc = productDesc;
    }

    public int getProductPrice(){return productPrice;}
    public void setProductPrice(int productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductImage(){return productImage;}
    public void setProductImage(String productImage) {
        this.productImage = productImage;
    }

    public String getPubliser(){return publiser;}
    public void setPubliser(String publiser) {
        this.publiser = publiser;
    }

    public Date getPublishTime(){return publishTime;}
    public void setPublishTime(Date publishTime) {
        this.publishTime = publishTime;
    }

    public int getProudctFlag(){return proudctFlag;}
    public void setProudctFlag(int proudctFlag) {
        this.proudctFlag = proudctFlag;
    }

    public int getProductCategoryID(){return productCategoryID;}
    public void setProductCategoryID(int productCategoryID) {
        this.productCategoryID = productCategoryID;
    }

    public Product(String productName, String productTitle, String productDesc, int productPrice, String productImage, String publiser,
                   Date publishTime, int proudctFlag, int productCategoryID){
        super();
        this.productName = productName;
        this.productTitle = productTitle;
        this.productDesc = productDesc;
        this.productPrice = productPrice;


    }
    public Product(){}
}
