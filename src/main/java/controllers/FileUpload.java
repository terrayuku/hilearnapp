/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;

/**
 *
 * @author TerraByte
 */
public class FileUpload extends HttpServlet {

 /**
     * Upload servlet to AWS S3 bucket
     */
    private static final long serialVersionUID = -7720246048637220075L;
    private static final int THRESHOLD_SIZE = 1024 * 1024 * 3;  // 3MB
    private static final int MAX_FILE_SIZE = 1024 * 1024 * 140; // 140MB
    private static final int MAX_REQUEST_SIZE = 1024 * 1024 * 150; // 150MB
    private static final String UUID_STRING = "uuid";
    private static final String AMAZON_ACCESS_KEY = "AKIAIUBADBISX272EWSQ"; // System.getenv("AWS_ACCESS_KEY");
    private static final String AMAZON_SECRET_KEY = "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"; // System.getenv("AWS_SECRET_KEY");
    private static final String S3_BUCKET_NAME = "hilearnfiles"; // System.getenv("S3_BUCKET_NAME");
 
    private static final Logger LOGGER = Logger.getGlobal();
 
       public FileUpload() {
        super();
    }
 
    /**
     * handles file upload via HTTP POST method.
   * @param request
   * @param response
   * @throws javax.servlet.ServletException
   * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
 
        // needed for cross-domain communication
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type");
        response.setHeader("Access-Control-Max-Age", "86400");
        
        // user data 
        String desc = request.getParameter("desc");
        Part uploadFile = request.getPart("uploadFile");
//        String fileName = uploadFile.getSubmittedFileName();
        
//        System.out.println(fileName + " " + desc);
        // checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            PrintWriter writer = response.getWriter();
            writer.println("Request does not contain upload data");
            writer.flush();
            return;
        }
        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(THRESHOLD_SIZE);
 
        ServletFileUpload upload = new ServletFileUpload(factory);
//        upload.setFileSizeMax(MAX_FILE_SIZE);
//        upload.setSizeMax(MAX_REQUEST_SIZE);
 
        String uuidValue = "";
        FileItem itemFile = null;
 
        try {
            // parses the request's content to extract file data
            List formItems = upload.parseRequest(request);
            Iterator iter = formItems.iterator();
 
            // iterates over form's fields to get UUID Value
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                if (item.isFormField()) {
                    if (item.getFieldName().equalsIgnoreCase(UUID_STRING)) {
                        uuidValue = item.getString();
                    }
                }
                // processes only fields that are not form fields
                if (!item.isFormField()) {
                    itemFile = item;
                }
            }
 
            if (itemFile != null) {
                // get item inputstream to upload file into s3 aws
 
                BasicAWSCredentials awsCredentials = new BasicAWSCredentials(AMAZON_ACCESS_KEY, AMAZON_SECRET_KEY);
 
                AmazonS3 s3client = new AmazonS3Client(awsCredentials);
                try {
 
                    ObjectMetadata om = new ObjectMetadata();
                    om.setContentLength(itemFile.getSize());
                    s3client.putObject(new PutObjectRequest(S3_BUCKET_NAME, "Notes/" + itemFile.getName() , itemFile.getInputStream(), om));
                    // save the path to the database to be used to download the uploaded file
                    s3client.setObjectAcl(S3_BUCKET_NAME, "Notes/" + itemFile.getName() , CannedAccessControlList.PublicRead);
 
                } catch (AmazonServiceException ase) {
                 
                    System.err.print(uuidValue + ":error:" + ase.getMessage());
 
                } catch (AmazonClientException ace) {
                    System.err.print(uuidValue + ":error:" + ace.getMessage());
                }
                
                // Load the fileUpload.jsp and send a success message
                request.setAttribute("message", itemFile.getName() + "Successfully Uploaded");
                response.setStatus(response.SC_MOVED_TEMPORARILY);
                response.setHeader("Location", "pages/fileUpload.jsp");
 
            } else {
                System.err.print(uuidValue + ":error:" + "No Upload file");
            }
 
        } catch (Exception ex) {
            System.err.print(uuidValue + ":" + ":error: " + ex.getMessage());
        }
        LOGGER.info(uuidValue + ":Upload done");
    }
}

