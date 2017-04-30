package utils;

import com.amazonaws.AmazonClientException;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.model.AmazonS3Exception;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import java.io.IOException;
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
  private static final String AWS_ACCESS_KEY = System.getenv("AWS_ACCESS_KEY"); // "AKIAIUBADBISX272EWSQ";
  private static final String AWS_SECRETE_KEY = System.getenv("AWS_SECRETE_KEY"); // "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";
  
  /**
   * Logger to be used when handling exception logging upload processes
   */
  private static final Logger LOGGER = Logger.getLogger(AWSUtils.class.getName());
  
  /**
   * function to upload files to aws-s3
   * @param file to upload
   * @param bucket to upload file to
   * @param fileName of the uploaded file
   * @return true if uploaded successful false otherwise
   */
  public boolean upload2S3(FileItem file, String bucket, String fileName) {
    // create credentials
    BasicAWSCredentials credentials = new BasicAWSCredentials(AWS_ACCESS_KEY, AWS_SECRETE_KEY);
    
    try {
      // create an aws client
      AmazonS3Client s3Client = new AmazonS3Client(credentials);
      // read file metada
      ObjectMetadata om = new ObjectMetadata();
      // get file size througu metadata
      om.setContentLength(file.getSize());
      // upload to s3 bucket
      s3Client.putObject(new PutObjectRequest(bucket, file.getName() , file.getInputStream(), om));
      s3Client.setObjectAcl(bucket, file.getName() , CannedAccessControlList.PublicRead);
      
      // save the path to the database to be used to download the uploaded file
      return true;
      
    } catch(AmazonS3Exception as3e) {
      
      LOGGER.log(Level.SEVERE, as3e.getMessage());
      
    } catch(AmazonClientException ace) {
      
      LOGGER.log(Level.INFO, "ERR_CLIENT_EXCEPTION{0}", ace.getMessage());
      
    } catch (IOException ex) {
      
      java.util.logging.Logger.getLogger(AWSUtils.class.getName()).log(Level.SEVERE, null, ex);
      
    }
 
    // unsuccessful upload
    return false;
  }
}
