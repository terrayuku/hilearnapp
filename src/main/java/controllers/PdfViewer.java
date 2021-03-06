/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Document;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import utils.AWSUtils;

/**
 *
 * @author TerraByte
 */
public class PdfViewer extends HttpServlet {

  /**
   * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException, UnsupportedEncodingException, SQLException {
   
      response.setContentType("application/pdf");
        try {
          
           
            AWSUtils utils = new AWSUtils();
//            InputStream reader =  (InputStream)utils.readBucket("hilearnfiles", "Bursary.pdf"); //file
            InputStream bdata = utils.readBucket("hilearnfiles", request.getParameter("class") +"/"+ request.getParameter("subject") +"/"+ request.getParameter("fileName"));
            
            try(OutputStream output = response.getOutputStream()){   
              int n;
              while( (n = bdata.read()) != -1){
               output.write(n); 
              }              
              System.out.println(output);
            } 
//            if(is != null) 
//              System.out.println("Not Null");
//            String line = "";
//            while ((line = is.readLine()) != null && line.length() != 0) {
              // continue reading as long end of file not reached
//              if(is.readLine() == null)
//                break;
              // store to line whatever is readed from reader except null
//              else
//                line = is.readLine();
//                System.out.println(line);
//               System.out.println(line);
              // check for line not null
//              if (line == null) break;
//            }
            
//            System.out.println("*********************************************\n Line " + line);
            // step 1
            Document document = new Document();
            // step 2
//            PdfWriter.getInstance(document, new FileOutputStream("c:/sample.pdf"));
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            PdfWriter.getInstance(document, response.getOutputStream());
            // step 3
            document.open();
            // step 4
            document.add(new Paragraph("Maybe"));
//            document.add(new Paragraph(new Date().toString()));
            // step 5
            document.close();
            
//            // setting some response headers
//            response.setHeader("Expires", "0");
//            response.setHeader("Cache-Control",
//                "must-revalidate, post-check=0, pre-check=0");
//            response.setHeader("Pragma", "public");
//            // setting the content type
//            response.setContentType("application/pdf");
//            // the contentlength
//            response.setContentLength(baos.size());
//            // write ByteArrayOutputStream to the ServletOutputStream
//            OutputStream os = response.getOutputStream();
//            baos.writeTo(os);
//            os.flush();
//            os.close();
        } catch (DocumentException de) {
            throw new IOException(de.getMessage());
        }
    
  }

  // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
  /**
   * Handles the HTTP <code>GET</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException, UnsupportedEncodingException {
    try {
      processRequest(request, response);
    } catch (SQLException ex) {
      Logger.getLogger(PdfViewer.class.getName()).log(Level.SEVERE, null, ex);
    }
  }

  /**
   * Handles the HTTP <code>POST</code> method.
   *
   * @param request servlet request
   * @param response servlet response
   * @throws ServletException if a servlet-specific error occurs
   * @throws IOException if an I/O error occurs
   */
  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    try {
      processRequest(request, response);
    } catch (UnsupportedEncodingException ex) {
      Logger.getLogger(PdfViewer.class.getName()).log(Level.SEVERE, null, ex);
    } catch (SQLException ex) {
      Logger.getLogger(PdfViewer.class.getName()).log(Level.SEVERE, null, ex);
    }
  }

  /**
   * Returns a short description of the servlet.
   *
   * @return a String containing servlet description
   */
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}
