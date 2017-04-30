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
public class Teacher_Subject {
  private String student_exam_num;
  private String subject_name;

  public Teacher_Subject() {
  }

  public Teacher_Subject(String student_exam_num, String subject_name) {
    this.student_exam_num = student_exam_num;
    this.subject_name = subject_name;
  }

  public String getTeacher_num() {
    return student_exam_num;
  }

  public void setTeacher_num(String student_exam_num) {
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
}
