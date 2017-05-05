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
public class AddSubject {
  private String sub_name;
  private String sub_description;
  private String sub_class;
  private String sub_teacher;
  private String school_admin;

  public AddSubject() {
  }

  public AddSubject(String sub_name, String sub_description, String sub_outline, String sub_teacher, String school_admin) {
    this.sub_name = sub_name;
    this.sub_description = sub_description;
    this.sub_class = sub_outline;
    this.sub_teacher = sub_teacher;
    this.school_admin = school_admin;
  }

  public String getSub_name() {
    return sub_name;
  }

  public void setSub_name(String sub_name) {
    this.sub_name = sub_name;
  }

  public String getSub_description() {
    return sub_description;
  }

  public void setSub_description(String sub_description) {
    this.sub_description = sub_description;
  }

  public String getSub_class() {
    return sub_class;
  }

  public void setSub_class(String sub_class) {
    this.sub_class = sub_class;
  }

  public String getSub_teacher() {
    return sub_teacher;
  }

  public void setSub_teacher(String sub_teacher) {
    this.sub_teacher = sub_teacher;
  }

  public String getSchool_admin() {
    return school_admin;
  }

  public void setSchool_admin(String school_admin) {
    this.school_admin = school_admin;
  }

  @Override
  public String toString() {
    return "AddSubject{" + "sub_name=" + sub_name + ", sub_description=" + sub_description + ", sub_outline=" + sub_class + ", sub_teacher=" + sub_teacher + ", school_admin=" + school_admin + '}';
  }
  
}
