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
public class ClassTeacher {
  private String staff_num;
  private String class_name;

  public ClassTeacher() {
  }

  public ClassTeacher(String staff_num, String class_name) {
    this.staff_num = staff_num;
    this.class_name = class_name;
  }

  public String getStaff_num() {
    return staff_num;
  }

  public void setStaff_num(String staff_num) {
    this.staff_num = staff_num;
  }

  public String getClass_name() {
    return class_name;
  }

  public void setClass_name(String class_name) {
    this.class_name = class_name;
  }

  @Override
  public String toString() {
    return "ClassTeacher{" + "staff_num=" + staff_num + ", class_name=" + class_name + '}';
  }
  
}
