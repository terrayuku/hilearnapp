/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.db.DBAccess;
import com.models.SchoolAdmin;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TerraByte
 */
public class AddAdmin extends HttpServlet {
  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
          throws ServletException, IOException {
    String disp="pages/add_admin.jsp";
    String admin_num=request.getParameter("admin_num");
    String name =request.getParameter("name");
    String lastname = request.getParameter("lastname");   
    String username=request.getParameter("username");
    String password =request.getParameter("password");
    String school = request.getParameter("school");
       
    ArrayList<String> errors = new ArrayList<String>();
       
    if(username==null||username.trim().length()==0)
      errors.add("Username not supplied");
    if(password==null||password.trim().length()==0)
      errors.add("Password not supplied");
    if(admin_num==null||admin_num.trim().length()==0)
      errors.add("admin_num not supplied");
    if(name==null||name.trim().length()==0)
      errors.add("name not supplied");
    if(lastname==null||lastname.trim().length()==0)
      errors.add("lastname not supplied");
    if(school==null||school.trim().length()==0)
      errors.add("school not supplied");
    
    if(errors.isEmpty()) {
      try {
        System.out.println("No input errors");
        SchoolAdmin admn = new SchoolAdmin(admin_num, name, lastname, username, password, school);
        
        DBAccess dao = new DBAccess();
        
        boolean added = dao.addAdmin(admn);
          System.out.println("");
        if(!added){
          System.out.println("Added Worked");
            request.setAttribute("successMsg","You entered " + username + "  for a user name"); 
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", disp);
          
        } else {
          System.out.println("Added Not Worked");
          request.setAttribute("successMsg","You entered " + username + "  for a user name");  
          response.setStatus(response.SC_MOVED_TEMPORARILY);
          response.setHeader("Location", disp);
        }
        
           
    } catch(Exception exe) {
      
      exe.printStackTrace();
      RequestDispatcher dir = request.getRequestDispatcher(disp);
      dir.forward(request, response);
      
    }
        
      } else {
        System.out.println("Error in input");
          request.setAttribute("error",errors);  
          response.setStatus(response.SC_MOVED_TEMPORARILY);
          response.setHeader("Location", disp);
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
