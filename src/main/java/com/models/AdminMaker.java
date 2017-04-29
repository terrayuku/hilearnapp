/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

/**
 *
 * @author TerraByte
 */
public class AdminMaker {
    private String passwrd;
    private String username;
    private int admin_num;

    public AdminMaker() {
    }

    public AdminMaker(String passwrd, String username) {
        this.passwrd = passwrd;
        this.username = username;
    }

    public String getPasswrd() {
        return passwrd;
    }

    public String getUsername() {
        return username;
    }

    public void setPasswrd(String passwrd) {
        this.passwrd = passwrd;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getAdmin_num() {
        return admin_num;
    }

    public void setAdmin_num(int admin_num) {
        this.admin_num = admin_num;
    }
    
    
}
