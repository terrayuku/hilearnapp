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
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.StandardCharsets;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.io.IOUtils;
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
          throws ServletException, IOException {
   
      response.setContentType("application/pdf");
        try {
          
           
            AWSUtils utils = new AWSUtils();
//            InputStream reader =  (InputStream)utils.readBucket("hilearnfiles", "Bursary.pdf"); //file
            BufferedReader is = utils.readBucket("hilearnfiles", "Bursary.pdf");
            
            String line = "No Content";
            while ( (line = is.readLine()) != null) 
            System.out.println("Line " + line);
            // step 1
            Document document = new Document();
            // step 2
//            PdfWriter.getInstance(document, new FileOutputStream("c:/sample.pdf"));
            PdfWriter.getInstance(document, response.getOutputStream());
            // step 3
            document.open();
            // step 4
            document.add(new Paragraph(line));
            document.newPage();
//            document.add(new Paragraph(new Date().toString()));
            // step 5
            document.close();
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
          throws ServletException, IOException {
    processRequest(request, response);
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
    processRequest(request, response);
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
