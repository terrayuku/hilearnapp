/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.sql.Timestamp;

/**
 *
 * @author TerraByte
 */
public class Chat {
  private String student_exam_num;
  private String comment_posted;
  private Timestamp time_stamp;
  private String subject;

  public Chat() {
  }

  public Chat(String student_exam_num, String comment_posted, Timestamp time_stamp, String subject) {
    this.student_exam_num = student_exam_num;
    this.comment_posted = comment_posted;
    this.time_stamp = time_stamp;
    this.subject = subject;
  }

  public Chat(String student_exam_num, String comment_posted, String subject) {
    this.student_exam_num = student_exam_num;
    this.comment_posted = comment_posted;
    this.subject = subject;
  }

  public String getStudent_exam_num() {
    return student_exam_num;
  }

  public void setStudent_exam_num(String student_exam_num) {
    this.student_exam_num = student_exam_num;
  }

  public String getComment_posted() {
    return comment_posted;
  }

  public void setComment_posted(String comment_posted) {
    this.comment_posted = comment_posted;
  }

  public Timestamp getTime_stamp() {
    return time_stamp;
  }

  public void setTime_stamp(Timestamp time_stamp) {
    this.time_stamp = time_stamp;
  }

  public String getSubject() {
    return subject;
  }

  public void setSubject(String subject) {
    this.subject = subject;
  }

  @Override
  public String toString() {
    return "Chat{" + "student_exam_num=" + student_exam_num + ", comment_posted=" + 
      comment_posted + ", time_stamp=" + time_stamp + ", subject=" + subject + '}';
  }
  
}
