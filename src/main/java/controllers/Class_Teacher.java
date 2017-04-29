/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers;

import com.db.DBAccess;
import com.models.ClassTeacher;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author TerraByte
 */
public class Class_Teacher extends HttpServlet {

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
    
      HttpSession session = request.getSession();
      // getting student data
      String staff_num = request.getParameter("staff_num");
      String class_name = request.getParameter("class_name");
        
      // Error Mapping
      Map<String, String> error = new HashMap<String, String>();
      // Default Student Page
      String dispatcher = "pages/teacher.jsp";
        
      // validating user input
      if (staff_num == null && staff_num.trim().length() == 0) {
        error.put("staff_num", "Exam Number Required");
      }
      if(class_name == null && class_name.trim().length() == 0){
        error.put("class_name", "Last Name Required");
      }
        
      if (error.isEmpty()) {
        try {
          // Call DAO to add the Student
          ClassTeacher class_teacher = new ClassTeacher(staff_num, class_name);

          // calling the student data access object
          DBAccess dbStudent = new DBAccess();
          boolean isAdded = dbStudent.addClass_Teacher(class_teacher);
          
          if (isAdded) { //when a student is added successfully
            request.setAttribute("message", "Student Successfully Added");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "pages/admin.jsp");
          } else { // when student is not added
            request.setAttribute("message", "Student Not Successfully Added");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", dispatcher);
          }            
        } catch (Exception exe) {
          request.setAttribute("student_error", "Student Not Adde (Servlet)");
        }
      } else {
        response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", dispatcher);
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
