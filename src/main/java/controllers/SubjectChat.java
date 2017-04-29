
package controllers;

import com.db.DBAccess;
import com.models.Chat;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Student Registration
 * @author terra
 */
public class SubjectChat extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
      HttpSession session = request.getSession();
      // getting student data
      String exam_number = (String)session.getAttribute("id");
      String comment = request.getParameter("comment");
      String subject = (String)request.getParameter("subject");
        
      // Error Mapping
      Map<String, String> error = new HashMap<String, String>();
      // Default Student Page
      String dispatcher = "pages/contents.jsp";
        
      // validating user input
      if (exam_number == null && exam_number.trim().length() == 0) {
        error.put("exam_number", "Exam Number Required");
      }
      if(comment == null && comment.trim().length() == 0){
        error.put("lname", "Last Name Required");
      }
      if(subject == null && subject.trim().length() != 0){
        error.put("phone", "Phone # Required");
      }
        
      if (error.isEmpty()) {
        try {
          // Call DAO to add the Student
          Chat subj_chat = new Chat(exam_number, comment,subject);

          // calling the student data access object
          DBAccess dbStudent = new DBAccess();
          boolean isAdded = dbStudent.addSubjectChat(subj_chat);
          
          if (isAdded) { //when a student is added successfully
            
            request.setAttribute("message", "Student Successfully Added");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "pages/chatroom.jsp?subject="+subject);
            
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
