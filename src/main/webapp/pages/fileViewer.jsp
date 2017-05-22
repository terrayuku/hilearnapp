<%-- 
    Document   : newjsp
    Created on : 08 Nov 2016, 2:42:35 PM
    Author     : zodiac
--%>

<%@page import="java.io.InputStream"%>
<%@page import="com.itextpdf.text.pdf.XfaXpathConstructor.XdpPackage.Pdf"%>
<%@page import="utils.AWSUtils"%>
<%@page import="java.util.ListIterator"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="com.amazonaws.services.s3.model.GetObjectRequest"%>
<%@page import="com.amazonaws.services.s3.model.S3Object"%>
<%@page import="com.amazonaws.services.s3.AmazonS3"%>
<%@page import="com.amazonaws.auth.BasicAWSCredentials"%>
<%@page import="com.amazonaws.services.s3.AmazonS3Client"%>
<%@page import="com.itextpdf.text.pdf.PdfReader"%>
<%@page import="com.itextpdf.text.pdf.parser.PdfTextExtractor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <jsp:include page="header.jsp?title=Hi-File Download" />
  </head>
  <body>
  <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid bg-dark">
          <jsp:include page="navigation.jsp?title=Hi-File Download&back=teacher_portal.jsp" />
        </div>
        <!-- /.container-fluid -->
    </nav> <!-- End Nav Bar -->

<section class="container-login">
    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
              <!--<form name="file" method="GET" action="../FileUpload" enctype="multipart/form-data">-->
                <h4>Choose a file to download</h4>
                  
                    <p class="text-center">No Content</p>
<!--                <input type="file" name="uploadFile" class="form-control input-sm" />
                </br>
                <input type="text" name="desc" class="form-control input-sm chat-input" placeholder="Describe this file" />-->
             
                <div class="wrapper">
                <span class="group-btn">     
                    <input type="submit" class="btn btn-primary btn-md" value="Download">
                </span>
                  <button name="login_lost_btn" type="button" class="btn btn-link">Cancel</button>
                </div>
              <!--</form>-->
            </div>
        </div>
    </div>
</section>
<section class="bg-dark">
    <!-- footer here -->
    <jsp:include page="footer.jsp" />
  </section>
  </body>
</html>
