package utils;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectInputStream;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.enterprise.context.ApplicationScoped;
import org.apache.commons.fileupload.FileItem;

/**
 * this class provides util functions to access aws services.
 * its object will be injected in the servlets 
 * @author TerraByte
 */

@ApplicationScoped
public class AWSUtils{
  /**
   * Credentials: temporal
   * later to be accessed straight from heroku
   */
  private static final String AWS_ACCESS_KEY = System.getenv("AWS_ACCESS_KEY_ID"); // "AKIAIUBADBISX272EWSQ";
  private static final String AWS_SECRETE_KEY = System.getenv("AWS_SECRETE_KEY"); // "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";
  
  /**
   * Logger to be used when handling exception logging upload processes
   */
  private static final Logger LOGGER = Logger.getLogger(AWSUtils.class.getName());
  
  private AmazonS3Client credentials() {
    // create credentials
    BasicAWSCredentials credentials = new BasicAWSCredentials(AWS_ACCESS_KEY, AWS_SECRETE_KEY);
    
      // create an aws client
      AmazonS3Client s3Client = new AmazonS3Client(credentials);
      
      return s3Client;
  }
  /**
   * function to upload files to aws-s3
   * @param file to upload
   * @param bucket to upload file to
   * @param clas to upload file
   * @param subject to upload file
   * @param fileName of the uploaded file
   * @param teacher_id who upload file
   * @return true if uploaded successful false otherwise
   */
  public boolean upload2S3(FileItem file, // file content
          String bucket, // bucket name
          String clas, // class to which to upload
          String subject, // subject to which to upload
          String fileName, // name of the file 
          String teacher_id // teacher id
  ) throws IOException { 
    // create credentials
    // BasicAWSCredentials credentials = new BasicAWSCredentials(AWS_ACCESS_KEY, AWS_SECRETE_KEY);
    
    try {
      // create an aws client
       AmazonS3Client s3Client = credentials();
      
      // read file metada
      ObjectMetadata om = new ObjectMetadata();
      // get file size througu metadata
      om.setContentLength(file.getSize());
      // upload to s3 bucket
      s3Client.putObject(new PutObjectRequest(bucket + "/" +
        clas + "/" + subject, file.getName(),
        file.getInputStream(), om));
//      s3Client.setObjectAcl(bucket, file.getName() , CannedAccessControlList.PublicRead);
      
     return true;
      
    } catch(AmazonS3Exception as3e) {
      
      LOGGER.log(Level.SEVERE, "ERR_AWS3Exception: {0}", as3e.getMessage());
      
    } catch(AmazonClientException ace) {
      
      LOGGER.log(Level.INFO, "ERR_CLIENT_EXCEPTION{0}", ace.getMessage());
      
    } 
    
    // unsuccessful upload
    return false;
  }
  
  /**
   * to read bucket contents in the s3 hilearnfiles bucket based on the school of the student
   * , class, and subject.
   * @param bucketName is the bucket to be rad
   * @param key to read the content
   * @return a the input stream of the key's content
   */
  public InputStream readBucket(String bucketName, String key) {
    
    try {
      // connecting to s3 client
      AmazonS3Client s3Client = credentials();
     
      S3Object obj = s3Client.getObject(bucketName, key);
      
      InputStream reader = new BufferedInputStream(obj.getObjectContent()) {
        @Override
        public int read() throws IOException {
          throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        }
      };
      
      
//      String line = null;
//      
//      while (true) {
//        // continue reading as long end of file not reached
//        if(reader.readLine() == null)
//          break;
//        // store to line whatever is readed from reader except null
//        else
//          line = reader.readLine();
//        // check for line not null
//        if (line == null) break;
//      }
//      // log line value for debugging
//      LOGGER.log(Level.INFO, "Line: {0}", line);
      // return line
      return reader;
      
    } catch(AmazonS3Exception as3e) {
      LOGGER.log(Level.INFO, "AMAZON_S3_CLIENTERR: {0}", as3e.getMessage());
    }
    return null;
  }
}
