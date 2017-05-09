
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
public class SchoolAdmin {
  private String admin_num;
  private String name;
  private String username;
  private String lastname;
  private String password;
  private String school;

  public SchoolAdmin() {
  }

  public SchoolAdmin(String admin_num, String name, String lastname,
          String username, String password, String school) {
    this.admin_num = admin_num;
    this.name = name;
    this.lastname = lastname;
    this.username = username;
    this.password = password;
    this.school = school;
  }

  public String getSchool() {
    return school;
  }

  public void setSchool(String school) {
    this.school = school;
  }

  public String getAdmin_num() {
    return admin_num;
  }

  public void setAdmin_num(String admin_num) {
    this.admin_num = admin_num;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getLastname() {
    return lastname;
  }

  public void setLastname(String lastname) {
    this.lastname = lastname;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

  @Override
  public int hashCode() {
    int hash = 7;
    hash = 97 * hash + Objects.hashCode(this.admin_num);
    hash = 97 * hash + Objects.hashCode(this.name);
    hash = 97 * hash + Objects.hashCode(this.lastname);
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
    final SchoolAdmin other = (SchoolAdmin) obj;
    if (!Objects.equals(this.admin_num, other.admin_num)) {
      return false;
    }
    if (!Objects.equals(this.name, other.name)) {
      return false;
    }
    if (!Objects.equals(this.lastname, other.lastname)) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "SchoolAdmin{" + "admin_num=" + admin_num + ", name=" + name + ", lastname=" + lastname + ", password=" + password + ", school=" + school + '}';
  }

  public String getUsername() {
    return username;
  }

  public void setUsername(String username) {
    this.username = username;
  }
  
  
}
