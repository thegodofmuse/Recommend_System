package com.example.managerpart.entity;
//网站用户
public class Users {
    private int uID;
    private String uName;
    private String uPassword;
    private String uPhoneNumber;//不知道为什么这里phonenumber读取不了
    private String uNickName;

    public int getuID(){return uID;}
    public void setuID(int uID){this.uID = uID;}//自动补全set快捷键：command+n

    public String getuName(){return uName;}
    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPassword(){return uPassword;}
    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String getuPhoneNumber(){return getuPhoneNumber();}
    public void setuPhoneNumber(String uPhoneNumber) {
        this.uPhoneNumber = uPhoneNumber;
    }

    public String getuNickName(){return uNickName;}
    public void setuNickName(String uNickName) {
        this.uNickName = uNickName;
    }

    public Users(int uID, String uName, String uPassword, String uPhoneNumber, String uNickName){
        super();
        this.uID = uID;
        this.uName = uName;
        this.uPassword = uPassword;
        this.uPhoneNumber = uPhoneNumber;
        this.uNickName = uNickName;
    }
    public Users(){super();}

    public Users(String uName, String uPassword, String uPhoneNumber, String uNickName){
        super();
        this.uName = uName;
        this.uPassword = uPassword;
        this.uPhoneNumber = uPhoneNumber;
        this.uNickName = uNickName;
    }
}
