package controllers;

import com.db.DBAccess;
import com.models.Comments;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USER
 */
@WebServlet(name = "CommentsController", urlPatterns = {"/CommentsController"})
public class CommentsController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //getting user input
        String exam_number = "2121";
        String fname = "Yanga";
        String lname = "Mngoma";
        String post = request.getParameter("post");
        //to capture user errors
        Map<String, String> userError = new HashMap<String, String>();
        //to gett all comments
        Collection<Comments> comment = null;
        //checking if user data is correct
        if(exam_number == null || exam_number.trim().length() == 0){
            userError.put("exam_number","Name Problem");
        }
        if(fname == null || fname.trim().length() == 0){
            userError.put("first_name","lName Problem");
        }
        if(lname == null || lname.trim().length() == 0){
            userError.put("last_name","location Problem");
        }
        if(post == null || post.trim().length() == 0){
            userError.put("post","comment Problem");
        }
        if(userError.isEmpty()){
            DBAccess dao = new DBAccess(); // instantiate a DAO class.. 

            try {
                Comments comm = new Comments(exam_number, fname, lname, post);
                boolean isCreated = dao.postComment(comm);
                if(isCreated){
                    System.out.println("Inserted...");
                }else{
                    System.out.println("Not Inserted...");
                }
                //comment = dao.getAllComments();
            } catch (Exception ex) {
                Logger.getLogger(CommentsController.class.getName()).log(Level.SEVERE, null, ex);
            }

            request.setAttribute("commen", comment);
            RequestDispatcher dis = request.getRequestDispatcher("comments/commentList.jsp");
            dis.forward(request, response);
        }else{
                request.setAttribute("error", userError);
            try{
                DBAccess dao = new DBAccess(); // instantiate a DAO class..
                Comments comm = new Comments(exam_number, fname, lname, post);
                comment = dao.getAllChats();
                request.setAttribute("commen", comment);
            }catch(Exception sqle){
                System.out.println("In Error");
                sqle.printStackTrace();
            }
            RequestDispatcher dis = request.getRequestDispatcher("comments/commentList.jsp");
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
