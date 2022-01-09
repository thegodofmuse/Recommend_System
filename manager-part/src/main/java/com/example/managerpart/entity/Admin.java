package com.example.managerpart.entity;
//管理员账号
public class Admin {
    private int aid;
    private String username;
    private String userpwd;

    public int getId(){return aid;}
    public void setId(int aid) {
        this.aid = aid;
    }

    public String getUsername(){return username;}
    public void setUsername(String username) {
        this.username = username;
    }

    public String getUserpwd(){return userpwd;}
    public void setUserpwd(String userpwd) {
        this.userpwd = userpwd;
    }

    public Admin(int aid,String username, String userpwd){
        super();
        this.aid = aid;
        this.username = username;
        this.userpwd = userpwd;
    }

    public Admin(String username, String userpwd){
        super();
        this.username = username;
        this.userpwd = userpwd;
    }

    public Admin(){super();}
}
