/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.util.Objects;

/**
 *
 * @author TerraByte
 */
public class Teacher {
  String staff_num;
  String last_name;
  String first_name;
  String email;
  String cell;
  String admin;

  public Teacher() {
  }

  public Teacher(String staff_num, String last_name, String first_name, String email, String cell, String admin) {
    this.staff_num = staff_num;
    this.last_name = last_name;
    this.first_name = first_name;
    this.email = email;
    this.cell = cell;
    this.admin = admin;
  }

  public String getStaff_num() {
    return staff_num;
  }

  public void setStaff_num(String staff_num) {
    this.staff_num = staff_num;
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

  public String getCell() {
    return cell;
  }

  public void setCell(String cell) {
    this.cell = cell;
  }

  public String getAdmin() {
    return admin;
  }

  public void setAdmin(String admin) {
    this.admin = admin;
  }

  @Override
  public int hashCode() {
    int hash = 7;
    hash = 97 * hash + Objects.hashCode(this.staff_num);
    hash = 97 * hash + Objects.hashCode(this.email);
    return hash;
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
    final Teacher other = (Teacher) obj;
    if (!Objects.equals(this.staff_num, other.staff_num)) {
      return false;
    }
    if (!Objects.equals(this.email, other.email)) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "Teacher{" + "staff_num=" + staff_num + ", last_name=" + last_name + ", first_name=" + first_name + ", email=" + email + ", cell=" + cell + ", admin=" + admin + '}';
  }
  
}
