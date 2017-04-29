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
public class StudentModel {
    private String exam_number;
    private String last_name;
    private String first_name;
    private String email;
    private String password;

  public StudentModel(String exam_number, String last_name, String first_name, String email, String password, String grade, String school_admin, String phone) {
    this.exam_number = exam_number;
    this.last_name = last_name;
    this.first_name = first_name;
    this.email = email;
    this.password = password;
    this.grade = grade;
    this.school_admin = school_admin;
    this.phone = phone;
  }
    private String grade;
    private String school_admin;
    private String phone;

    public StudentModel() {
    }

    public StudentModel(String exam_number, String last_name,
            String first_name, String email, 
            String grade, String school_admin, String phone) {
        this.exam_number = exam_number;
        this.last_name = last_name;
        this.first_name = first_name;
        this.email = email;
        this.grade = grade;
        this.school_admin = school_admin;
        this.phone = phone;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getExam_number() {
        return exam_number;
    }

    public void setExam_number(String exam_number) {
        this.exam_number = exam_number;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    @Override
    public String toString() {
        return "StudentModel{" + "exam_number=" + exam_number + ", last_name=" + last_name + ", first_name=" + first_name + '}';
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final StudentModel other = (StudentModel) obj;
        if (this.exam_number != other.exam_number) {
            return false;
        }
        return true;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getSchool_admin() {
        return school_admin;
    }

    public void setSchool_admin(String school_admin) {
        this.school_admin = school_admin;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }
    
    
}
