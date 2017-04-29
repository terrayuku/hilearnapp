/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.sql.Date;
import java.sql.Timestamp;

/**
 *
 * @author terra
 */
public class Comments {
    private String exam_number;
    private String first_name;
    private String last_name;
    private String post;
    private Timestamp date_posted;

    public Comments() {
    }

    public Comments(String exam_number, String first_name, String last_name, String post) {
        this.exam_number = exam_number;
        this.first_name = first_name;
        this.last_name = last_name;
        this.post = post;
    }
      public Comments(String exam_number, String last_name, String first_name, String comment_posted, Timestamp date) {
        this.exam_number = exam_number;
        this.last_name = last_name;
        this.first_name = first_name;
        this.post = comment_posted;
        this.date_posted = date;
    }
//    public Comments(int exam_number, String last_name, String first_name, String comment_posted) {
//        this.exam_number = exam_number;
//        this.last_name = last_name;
//        this.first_name = first_name;
//        this.comment_posted = comment_posted;
//    }

    public String getPost() {
        return post;
    }

    public void setPost(String post) {
        this.post = post;
    }

    public String getExam_number() {
        return exam_number;
    }

    public void setExam_number(String exam_number) {
        this.exam_number = exam_number;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public Timestamp getDate_posted() {
        return date_posted;
    }

    public void setDate_posted(Timestamp date_posted) {
        this.date_posted = date_posted;
    }

    @Override
    public String toString() {
        return "Comments{" + "exam_number=" + exam_number + ", first_name=" + first_name + ", last_name=" + last_name + ", post=" + post + ", date_posted=" + date_posted + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 97 * hash + (this.exam_number != null ? this.exam_number.hashCode() : 0);
        hash = 97 * hash + (this.post != null ? this.post.hashCode() : 0);
        hash = 97 * hash + (this.date_posted != null ? this.date_posted.hashCode() : 0);
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
        final Comments other = (Comments) obj;
        if ((this.exam_number == null) ? (other.exam_number != null) : !this.exam_number.equals(other.exam_number)) {
            return false;
        }
        if ((this.post == null) ? (other.post != null) : !this.post.equals(other.post)) {
            return false;
        }
        if (this.date_posted != other.date_posted && (this.date_posted == null || !this.date_posted.equals(other.date_posted))) {
            return false;
        }
        return true;
    }
    
    
}
