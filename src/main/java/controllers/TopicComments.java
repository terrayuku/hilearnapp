
package controllers;

import com.db.DBAccess;
import com.models.Comment;
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
public class TopicComments extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    
      HttpSession session = request.getSession();
      // getting student data
      String topic = request.getParameter("topic");
      String topic_date = request.getParameter("topic_date");
      String commentor = (String)session.getAttribute("id");
      String comment = request.getParameter("comment");
        
      // Error Mapping
      Map<String, String> error = new HashMap<String, String>();
      // Default Student Page
      String dispatcher = "pages/contents.jsp?subject="+request.getParameter("subject");
        
      // validating user input
      if (topic == null && topic.trim().length() == 0) {
        error.put("exam_number", "Exam Number Required");
      }
      if(comment == null && comment.trim().length() == 0){
        error.put("lname", "Last Name Required");
      }
      if(topic_date == null && topic_date.trim().length() != 0){
        error.put("phone", "Phone # Required");
      }
      if(commentor == null && commentor.trim().length() != 0){
        error.put("phone", "Phone # Required");
      }
        
      if (error.isEmpty()) {
        try {
          // Call DAO to add the Student
          int exam_num = Integer.parseInt(commentor);
          Comment comm = new Comment(topic, topic_date, exam_num, comment);
          // calling the student data access object
          DBAccess dbStudent = new DBAccess();
          boolean isAdded = dbStudent.addComment(comm);
          
          if (isAdded) { //when a student is added successfully
            
            request.setAttribute("message", "Student Successfully Added");
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", "pages/chatroom.jsp?subject="+request.getParameter("subject"));
            
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
