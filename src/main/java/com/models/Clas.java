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
public class Clas {
  private String class_name;

  public Clas() {
  }

  public Clas(String class_name) {
    this.class_name = class_name;
  }

  public String getClass_name() {
    return class_name;
  }

  public void setClass_name(String class_name) {
    this.class_name = class_name;
  }

  @Override
  public int hashCode() {
    int hash = 7;
    hash = 53 * hash + Objects.hashCode(this.class_name);
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
    final Clas other = (Clas) obj;
    if (!Objects.equals(this.class_name, other.class_name)) {
      return false;
    }
    return true;
  }

  @Override
  public String toString() {
    return "Class{" + "class_name=" + class_name + '}';
  }
  
  
}
