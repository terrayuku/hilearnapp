/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.models;

import java.io.InputStream;

/**
 *
 * @author aviwe08
 */
public class Upload {
    private String file_name;
    private String subject;
    private String file_description;
    private String file_location;
    private String uploaded_by;

    public Upload(String file_name, String subject, String file_description, 
            String file_location, String uploaded_by) {
        this.file_name = file_name;
        this.subject = subject;
        this.file_description = file_description;
        this.file_location = file_location;
        this.uploaded_by = uploaded_by;
    }

    public Upload() {
    }

    public String getFile_name() {
        return file_name;
    }

    public void setFile_name(String file_name) {
        this.file_name = file_name;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getFile_description() {
        return file_description;
    }

    public void setFile_description(String file_description) {
        this.file_description = file_description;
    }

    public String getFile_location() {
        return file_location;
    }

    public void setFile_location(String file_location) {
        this.file_location = file_location;
    }

    public String getUploaded_by() {
        return uploaded_by;
    }

    public void setUploaded_by(String uploaded_by) {
        this.uploaded_by = uploaded_by;
    }
}

