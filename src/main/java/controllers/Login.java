package controllers;

import com.db.DBAccess;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * School Admin Login
 * @author zodiac
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {

  protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException, Exception {
        
    String disp="login/login.jsp";
       
    String username=request.getParameter("username");
    String password =request.getParameter("password");
    String stand = request.getParameter("stand");
       
    ArrayList<String> errors = new ArrayList<String>();
       
    if(username==null||username.trim().length()==0)
      errors.add("Username not supplied");
    if(password==null||password.trim().length()==0)
      errors.add("Password not supplied");
    
    try {
      
      if(errors.isEmpty()) {
              
        DBAccess dao = new DBAccess();
        List comeIn = dao.loginCheck(username, password);
        System.out.println("ADMIN LIST: " + comeIn.toArray()[1]);
           
        if(comeIn.isEmpty()){
          
          errors.add("Your login details not on the system"
            + " consult admin to add you to the database");
          
        } else {
          
          HttpSession session = request.getSession();
          session.setAttribute("id", comeIn.toArray()[0]);
          session.setAttribute("username", comeIn.toArray()[1]);
          String pageTo = null;
          if (comeIn.toArray()[2].toString().equalsIgnoreCase("STUDENT")) {  
            
            pageTo = "pages/student_subjects.jsp";
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", pageTo);
                      
          } else if (comeIn.toArray()[2].toString().equalsIgnoreCase("SCHOOL_ADMIN")) {
            
            pageTo = "pages/admin.jsp";
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", pageTo);
                      
          } else if (comeIn.toArray()[2].toString().equalsIgnoreCase("TEACHER")) {
            
            pageTo = "pages/teacher_portal.jsp";
            response.setStatus(response.SC_MOVED_TEMPORARILY);
            response.setHeader("Location", pageTo);
                    
          } else 
            errors.add("Please tick relevant");
            
        }
        
        request.setAttribute("successMsg","You entered " + username + "  for a user name");  
        
      } 
      
    } catch(Exception exe) {
      
      exe.printStackTrace();
      RequestDispatcher dir = request.getRequestDispatcher(disp);
      dir.forward(request, response);
      
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
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
        } catch (Exception ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
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
