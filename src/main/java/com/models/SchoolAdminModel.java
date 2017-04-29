/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

/**
 *
 * @author terra
 */
public class SchoolAdminModel 
{
    
    private int stuff_num;
    private String last_name;
    private String first_name;
    private String email;
    private int cell_number;
    private int school_admin_num;

    public SchoolAdminModel(int stuff_num, String last_name, String first_name, String email, int cell_number, int school_admin_num) {
        this.stuff_num = stuff_num;
        this.last_name = last_name;
        this.first_name = first_name;
        this.email = email;
        this.cell_number = cell_number;
        this.school_admin_num = school_admin_num;
    }

    public SchoolAdminModel() {
    }

    public int getStuff_num() {
        return stuff_num;
    }

    public void setStuff_num(int stuff_num) {
        this.stuff_num = stuff_num;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCell_number() {
        return cell_number;
    }

    public void setCell_number(int cell_number) {
        this.cell_number = cell_number;
    }

    public int getSchool_admin_num() {
        return school_admin_num;
    }

    public void setSchool_admin_num(int school_admin_num) {
        this.school_admin_num = school_admin_num;
    }
    
}
