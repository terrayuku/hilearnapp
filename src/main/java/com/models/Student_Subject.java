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
public class Student_Subject {
  private String student_exam_num;
  private String subject_name;
  private String subject_class;
  private String subject_file;

  public Student_Subject() {
  }

  public Student_Subject(String student_exam_num, String subject_name) {
    this.student_exam_num = student_exam_num;
    this.subject_name = subject_name;
  }

  public String getStudent_exam_num() {
    return student_exam_num;
  }

  public void setStudent_exam_num(String student_exam_num) {
    this.student_exam_num = student_exam_num;
  }

  public String getSubject_name() {
    return subject_name;
  }

  public void setSubject_name(String subject_name) {
    this.subject_name = subject_name;
  }

  @Override
  public String toString() {
    return "Student_Subject{" + "student_exam_num=" + student_exam_num + ", subject_name=" + subject_name + '}';
  }

  public String getSubject_class() {
    return subject_class;
  }

  public void setSubject_class(String subject_class) {
    this.subject_class = subject_class;
  }

  public String getSubject_file() {
    return subject_file;
  }

  public void setSubject_file(String subject_file) {
    this.subject_file = subject_file;
  }
  
}
