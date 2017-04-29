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
public class Comment {
  private String topic;
  private String topic_date;
  private int commentor;
  private String comment;
  private Timestamp comment_date;

  public Comment() {
  }

  public Comment(String topic, String topic_date, int commentor, String comment) {
    this.topic = topic;
    this.topic_date = topic_date;
    this.commentor = commentor;
    this.comment = comment;
  }
  

  public String getTopic() {
    return topic;
  }

  public void setTopic(String topic) {
    this.topic = topic;
  }

  public String getTopic_date() {
    return topic_date;
  }

  public void setTopic_date(String topic_date) {
    this.topic_date = topic_date;
  }

  public int getCommentor() {
    return commentor;
  }

  public void setCommentor(int commentor) {
    this.commentor = commentor;
  }

  public String getComment() {
    return comment;
  }

  public void setComment(String comment) {
    this.comment = comment;
  }

  public Timestamp getComment_date() {
    return comment_date;
  }

  public void setComment_date(Timestamp comment_date) {
    this.comment_date = comment_date;
  }

  @Override
  public String toString() {
    return "Comment{" + "topic=" + topic + ", topic_date=" + topic_date + ", commentor=" + commentor + ", comment=" + comment + ", comment_date=" + comment_date + '}';
  }
  
  
}
