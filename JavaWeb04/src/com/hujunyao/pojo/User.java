package com.hujunyao.pojo;

public class User {
    private Integer user_id;
    private String username;
    private String password;
    private String email;
    private String icon = "default_icon.png";

    public User() {
    }

    public User(Integer id, String username, String password, String email, String icon) {
        this.user_id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.icon = icon;
    }


    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getIcon() {return icon;}

    public void setIcon(String icon) {this.icon = icon;}


    @Override
    public String toString() {
        return "User{" +
                "user_id=" + user_id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", icon='" + icon + '\'' +
                '}';
    }
}
