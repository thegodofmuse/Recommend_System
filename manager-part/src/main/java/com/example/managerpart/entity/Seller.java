package com.example.managerpart.entity;

public class Seller {
    private int sID;
    private String sName;
    private int remark_score;
    private int disabled_flag;

    public int getsID(){return sID;}
    public void setsID(int sID){this.sID =sID;}

    public String getsName(){return sName;}
    public void setsName(String sName){this.sName = sName;}

    public int getRemark_score(){return remark_score;}
    public void setRemark_score(int remark_score){this.remark_score = remark_score;}

    public int getDisabled_flag(){return disabled_flag;}
    public void setDisabled_flag(int disabled_flag){this.disabled_flag = disabled_flag;}
}
