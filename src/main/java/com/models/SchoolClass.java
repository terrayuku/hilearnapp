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
public class SchoolClass {
  private String class_name;
  private String number_of_students = "0";
  private String number_of_teachers = "0";

  public SchoolClass() {
  }

  public SchoolClass(String class_name, String number_of_students, String number_of_teachers) {
    this.class_name = class_name;
    this.number_of_students = number_of_students;
    this.number_of_teachers = number_of_teachers;
  }

  public String getClass_name() {
    return class_name;
  }

  public void setClass_name(String class_name) {
    this.class_name = class_name;
  }

  public String getNumber_of_students() {
    return number_of_students;
  }

  public void setNumber_of_students(String number_of_students) {
    this.number_of_students = number_of_students;
  }

  public String getNumber_of_teachers() {
    return number_of_teachers;
  }

  public void setNumber_of_teachers(String number_of_teachers) {
    this.number_of_teachers = number_of_teachers;
  }

  @Override
  public String toString() {
    return "Class{" + "class_name=" + class_name + ", number_of_students=" + number_of_students + ", number_of_teachers=" + number_of_teachers + '}';
  }
  
  
}
