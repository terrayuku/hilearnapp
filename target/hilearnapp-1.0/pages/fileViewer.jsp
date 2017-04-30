<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page import="java.util.ListIterator"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.amazonaws.services.s3.model.GetObjectRequest"%>
<%@page import="com.amazonaws.services.s3.model.S3Object"%>
<%@page import="com.amazonaws.services.s3.AmazonS3"%>
<%@page import="com.amazonaws.auth.BasicAWSCredentials"%>
<%@page import="com.amazonaws.services.s3.AmazonS3Client"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/main.css" />
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />
    <script type="text/javascript" src="../js/bootstrap.js"></script>
    <title>Hi-File Download</title>
  </head>
  <body>
  <nav class="navbar navbar-default navbar-static-top navbar-inverse">
	  <div class="container">
      <section class="container">
	    <jsp:include 
      page="navigation.jsp?title=Hi-File Download&back=teacher_portal.jsp" />
      <jsp:include page="username.jsp" />
	  </section>
	  </div>
	</nav> <!-- End Nav Bar -->
<main>
<div class="container-login">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
              <form name="file" method="POST" action="../FileUpload" enctype="multipart/form-data">
                <h4>Choose a file to download</h4>
                <%
                  String AMAZON_ACCESS_KEY = "AKIAIUBADBISX272EWSQ"; // System.getenv("AWS_ACCESS_KEY");
                  String AMAZON_SECRET_KEY = "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"; // System.getenv("AWS_SECRET_KEY");
                  String S3_BUCKET_NAME = "hilearnfiles"; // System.getenv("S3_BUCKET_NAME");
                  BasicAWSCredentials awsCredentials = new BasicAWSCredentials(AMAZON_ACCESS_KEY, AMAZON_SECRET_KEY);
                  AmazonS3 s3client = new AmazonS3Client(awsCredentials);
                  
                  S3Object s3Object = s3client.getObject(new GetObjectRequest(S3_BUCKET_NAME, "Notes/ReadMe.txt"));
                  ListIterator s3 = s3client.listBuckets().listIterator();
                  System.out.println("Buckets: " + s3.next());
//                  System.out.println("Content-Type: "  + 
//                  s3Object.getObjectMetadata().getContentType());
                  
                  BufferedReader reader = new BufferedReader(new 
                    InputStreamReader(s3Object.getObjectContent()));
                  while (true) {
                    String line = reader.readLine();
                    if (line == null) break;

//                    System.out.println("    " + line);
                  %>
                  <%= line %>
                  <%
                  }
                  System.out.println();

                %>
<!--                <input type="file" name="uploadFile" class="form-control input-sm" />
                </br>
                <input type="text" name="desc" class="form-control input-sm chat-input" placeholder="Describe this file" />-->
             
                <div class="wrapper">
                <span class="group-btn">     
                    <input type="submit" class="btn btn-primary btn-md" value="Download">
                </span>
                  <button name="login_lost_btn" type="button" class="btn btn-link">Cancel</button>
                </div>
              </form>
            </div>
        </div>
    </div>
</div>
</main>
<section>
    <!-- footer here -->
    <jsp:include page="../pages/footer.jsp" />
</section> 
  </body>
</html>
