
package controllers;

import com.db.DBAccess;
import com.models.AddSubject;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Student Registration
 * @author terra
 */
public class Subject extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
      HttpSession session = request.getSession();
      // getting student data
      String subj_name = request.getParameter("subj_name");
      String subj_desc = request.getParameter("subj_desc");
      String subj_class = request.getParameter("subj_class");
      String subj_teacher = request.getParameter("subj_teacher");
      String subj_admin = (String)session.getAttribute("id");
      
      // Error Mapping
      Map<String, String> error = new HashMap<String, String>();
      // Default Student Page
      String dispatcher = "pages/admin.jsp";
        
      // validating user input
      if (subj_name == null && subj_name.trim().length() == 0) {
        error.put("exam_number", "Exam Number Required");
      }
      if(subj_desc == null && subj_desc.trim().length() == 0){
        error.put("lname", "Last Name Required");
      }
      if(subj_class == null && subj_class.trim().length() == 0){
        error.put("fname", "First Name Required");
      }
      if(subj_teacher == null && subj_teacher.trim().length() == 0){
        error.put("email", "Email Required");
      }
      if(subj_admin == null && subj_admin.trim().length() == 0){
        error.put("grade", "Grade Required");
      }
        
      if (error.isEmpty()) {
        try {
          // Call DAO to add the Student
          AddSubject sub = new AddSubject(subj_name, subj_desc, subj_class,
            subj_teacher, subj_admin);

          // calling the student data access object
          DBAccess dbStudent = new DBAccess();
          boolean isAdded = dbStudent.addSubject(sub);
          if (isAdded) { //when a student is added successfully
            request.setAttribute("message", "Student Successfully Added");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "pages/admin.jsp");
          } else { // when student is not added
            request.setAttribute("message", "Student Not Successfully Added");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "pages/newsubject.jsp");
          }            
        } catch (Exception exe) {
          request.setAttribute("student_error", "Student Not Adde (Servlet)");
        }
      } else {
        RequestDispatcher dis = request.getRequestDispatcher(dispatcher);
        dis.forward(request, response);
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
