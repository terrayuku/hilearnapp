
package com.db;

import com.models.Subject;
import com.models.Upload;
import com.models.AdminMaker;
import com.models.Chat;
import com.models.Clas;
import com.models.ClassTeacher;
import com.models.Comment;
import com.models.Comments;
import com.models.Register;
import com.models.SchoolAdmin;
import com.models.SchoolAdminModel;
import com.models.SchoolClass;
import com.models.StudentModel;
import com.models.Student_Subject;
import com.models.Teacher;
import com.models.Teacher_Subject;
import java.net.URI;
import java.net.URISyntaxException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 *
 * @author USER
 */
public class DBAccess {

public DataSource getDataSource() throws Exception{
    InitialContext cxt = new InitialContext();
    if ( cxt == null ) {
        throw new Exception("Uh No Context Found!");
    } 
    //JNDI name must match in context and web.xml file. Late
    DataSource ds = (DataSource) cxt.lookup("java:comp/env/jdbc/hilearndb");
    if ( ds == null ) {
        throw new Exception("Data Source Not Found!");
    }
    return ds;
}
    /**
 *  Returns a database connection
 * @return
 * @throws Exception 
 */
private Connection getConnection() throws SQLException, URISyntaxException{
//Connection connection =null;
//try{
// connection = getDataSource().getConnection();
//}
//catch(Exception ex){
//    throw new SQLException("Database Connection Failed." + ex.getMessage());
//}
// return connection;

  URI dbUri = new URI(System.getenv("CLEARDB_DATABASE_URL"));

  String username = dbUri.getUserInfo().split(":")[0];
  String password = dbUri.getUserInfo().split(":")[1];
  String dbUrl = "jdbc:mysql://" + dbUri.getHost() + dbUri.getPath();

  return DriverManager.getConnection(dbUrl, username, password);
} 
/**
 *  Closes all the database resources
 * @param rst
 * @param stmt
 * @param conn
 * @throws SQLException 
 */
private void closeDBResources(ResultSet rst, Statement stmt, Connection conn) 
        throws SQLException{
    if (rst != null) {
      try { rst.close(); } catch (SQLException e) { ; }
      rst = null;
    }
    if (stmt != null) {
      try { stmt.close(); } catch (SQLException e) { ; }
      stmt = null;
    }
    if (conn != null) {
      try { conn.close(); } catch (SQLException e) { ; }
      conn = null;
    }
}
/**
 * 
 * @return admins
 */
public List getAllAdmins() throws URISyntaxException{
     Connection conn = null;
        CallableStatement call = null;
        ResultSet res = null;
        List admin = new ArrayList();
        //testing for successfull creation of comment
//        boolean isCreated = false;
        try{
            
            //getting connection
            conn = this.getConnection();
            //auto commint false
//            conn.setAutoCommit(false);
            //calling a stored procedure createComment
            call = conn.prepareCall("{call getAllAdmins()}");
           
            
            //executing the procedure
            res = call.executeQuery();
            while(res.next()){
              SchoolAdmin admn = new 
                SchoolAdmin(res.getString(1),
                 res.getString(2),
                 res.getString(3),
                 res.getString(4),
                 res.getString(5),
                 res.getString(6)                        
              );
                admin.add(admn);
            }
        }catch(SQLException sqle){
            System.out.println("Admin Not Found!");
            sqle.printStackTrace();
        }
        return admin;
}

public List getAllTeachers() throws URISyntaxException{
     Connection conn = null;
        CallableStatement call = null;
        ResultSet res = null;
        List admin = new ArrayList();
        try{
            
          //getting connection
          conn = this.getConnection();
          call = conn.prepareCall("{call getAllTeachers()}");
           
          //executing the procedure
          res = call.executeQuery();
          while(res.next()){
            Teacher teacher = new Teacher();
            teacher.setStaff_num(res.getString(1));
            teacher.setLast_name(res.getString(2));
            teacher.setFirst_name(res.getString(3));
            teacher.setEmail(res.getString(4));
            teacher.setCell(res.getString(5));
            teacher.setAdmin(res.getString(6));
            
            admin.add(teacher);
          }
        }catch(SQLException sqle){
            System.out.println("No teacher found");
            sqle.printStackTrace();
        }
        return admin;
}

public List getAllClasses() throws URISyntaxException{
     Connection conn = null;
        CallableStatement call = null;
        ResultSet res = null;
        List admin = new ArrayList();
        try{
            
          //getting connection
          conn = this.getConnection();
          call = conn.prepareCall("{call getAllClasses()}");
           
          //executing the procedure
          res = call.executeQuery();
          while(res.next()){
            Clas clas = new Clas();
            clas.setClass_name(res.getString(1));
            
            admin.add(clas);
          }
        }catch(SQLException sqle){
            System.out.println("No class found");
            sqle.printStackTrace();
        }
        return admin;
}

public List getAllSubjects() throws URISyntaxException{
     Connection conn = null;
        CallableStatement call = null;
        ResultSet res = null;
        List admin = new ArrayList();
        try{
            
          //getting connection
          conn = this.getConnection();
          call = conn.prepareCall("{call getAllSubjects()}");
           
          //executing the procedure
          res = call.executeQuery();
          while(res.next()){
            Subject subject = new Subject();
            subject.setSub_name(res.getString(1));
            subject.setSub_class(res.getString(3));
            
            admin.add(subject);
          }
        }catch(SQLException sqle){
            System.out.println("No subject found");
            sqle.printStackTrace();
        }
        return admin;
}


public List getAllStudents() throws URISyntaxException{
     Connection conn = null;
        CallableStatement call = null;
        ResultSet res = null;
        List admin = new ArrayList();
        try{
            
          //getting connection
          conn = this.getConnection();
          call = conn.prepareCall("{call getAllStudents()}");
           
          //executing the procedure
          res = call.executeQuery();
          while(res.next()){
            StudentModel subject = new StudentModel();
            subject.setExam_number(res.getString(1));
            subject.setFirst_name(res.getString(2));
            subject.setLast_name(res.getString(3));
            
            admin.add(subject);
          }
        }catch(SQLException sqle){
            System.out.println("No subject found");
            sqle.printStackTrace();
        }
        return admin;
}

/**
 * 
 * @param school_number
 * @return school number
 */
public List getSchool() throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List school = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSchool()}");
        //executing the procedure
        res = call.executeQuery();
        while(res.next()){
            school.add(res.getString(1));
            school.add(res.getString(2));
            school.add(res.getString(3));
         }
    }catch(SQLException sqle){
        System.out.println("School Not Found!");
        sqle.printStackTrace();
    }
    return school;
}
/**
 * 
 * @param staff_num
 * @return a teacher
 */
public List getTeacher(int staff_num) throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List teacher = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getTeacher(?)}");
        //executing the procedure
        call.setInt(1, staff_num);
        res = call.executeQuery();
        while(res.next()){
            teacher.add(res.getInt(1));
            teacher.add(res.getString(2));
            teacher.add(res.getString(3));
            teacher.add(res.getString(4));
            teacher.add(res.getString(5));
            teacher.add(res.getInt(6));
         }
    }catch(SQLException sqle){
        System.out.println("Teacher Not Found!");
        sqle.printStackTrace();
    }
    return teacher;
}
public List getClassTeacher(String staff_num) throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List class_teacher = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getClassTeacher(?)}");
        //executing the procedure
        call.setString(1, staff_num);
        
        res = call.executeQuery();
        while(res.next()){
            class_teacher.add(res.getString(1));
         }
    }catch(SQLException sqle){
        System.out.println("Teacher Not Found!");
        sqle.printStackTrace();
    }
    System.out.println("List :" + class_teacher);
  return class_teacher;
}
/**
 * 
 * @param sub_name
 * @return a subject
 */
public List getSubject(String sub_name) throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List subject = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSubject(?)}");
        //executing the procedure
        call.setString(1, sub_name);
        res = call.executeQuery();
        while(res.next()){
            subject.add(res.getString(1));
            subject.add(res.getString(2));
            subject.add(res.getString(3));
            subject.add(res.getString(4));
            subject.add(res.getInt(5));
            subject.add(res.getInt(6));
         }
    }catch(SQLException sqle){
        System.out.println("Subject Not Found!");
        sqle.printStackTrace();
    }
    return subject;
}

public List getStudent_Subject(String exam_num) throws URISyntaxException
{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List subject = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getStudent_Subject(?)}");
        //executing the procedure
        call.setString(1, exam_num);
        res = call.executeQuery();
        while(res.next()){
          System.out.println(res.getString(1));
          System.out.println(res.getString(2));
          Student_Subject stu = new Student_Subject();
          stu.setSubject_name(res.getString(1));
          stu.setSubject_class(res.getString(2));
            
        
            subject.add(stu);
         }
    }catch(SQLException sqle){
        System.out.println("Subject Not Found!");
        sqle.printStackTrace();
    }
    return subject;
}

public List getTeacher_Subject(String staff_num, String clas) throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List subject = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getTeacher_Subject(?, ?)}");
        //executing the procedure
        call.setString(1, staff_num);
        call.setString(2, clas);
        res = call.executeQuery();
        while(res.next()){
//          System.out.println(res.getString(1));
            subject.add(res.getString(1));
         }
    }catch(SQLException sqle){
        System.out.println("Subject Not Found!");
        sqle.printStackTrace();
    }
    return subject;
}
/**
 * 
 * @return a school admin
 */
public List getSchoolAdmin() throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List school_admin = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSchoolAdmin()}");
        //executing the procedure
        res = call.executeQuery();
        while(res.next()){
            school_admin.add(res.getInt(1));
            school_admin.add(res.getString(2));
            school_admin.add(res.getString(3));
            school_admin.add(res.getString(4));
            school_admin.add(res.getString(5));
            school_admin.add(res.getBoolean(6));
            school_admin.add(res.getInt(7));
            school_admin.add(res.getString(8));
            
         }
    }catch(SQLException sqle){
        System.out.println("School Admin Not Found!");
        sqle.printStackTrace();
    }
    return school_admin;
}

public List<Chat> getSubjectChats(String subj_chat) throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List subject_chat = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getSubjectChats(?)}");
        call.setString(1, subj_chat);
        //executing the procedure
        res = call.executeQuery();
        while(res.next()) {
          Chat chat = new Chat();
          chat.setStudent_exam_num(res.getString(1));
          chat.setComment_posted(res.getString(2));
          chat.setTime_stamp(res.getTimestamp(3));
          chat.setSubject(res.getString(4));
          subject_chat.add(chat);
            
        }
    }catch(SQLException sqle){
        System.out.println("School Admin Not Found!");
        sqle.printStackTrace();
    }
    return subject_chat;
}

public List<Comment> getComment(String topic) throws URISyntaxException{
    Connection conn = null;
    CallableStatement call = null;
    ResultSet res = null;
    List comments = new ArrayList();
    
    try{
            
        //getting connection
        conn = this.getConnection();
        //auto commint false
//      conn.setAutoCommit(false);
        //calling a stored procedure createComment
        call = conn.prepareCall("{call getComments(?)}");
        call.setString(1, topic);
        //executing the procedure
        res = call.executeQuery();
        while(res.next()){
            Comment comm = new Comment();
            comm.setCommentor(res.getInt(1));
            comm.setComment(res.getString(2));
            comm.setComment_date(res.getTimestamp(3));
            comments.add(comm);
            
         }
    }catch(SQLException sqle){
        System.out.println("School Admin Not Found!");
        sqle.printStackTrace();
    }
    return comments;
}

public boolean addComment(Comment comment) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addComment(?, ?, ?, ?)}");
        //setting the parameters
        call.setString(1, comment.getTopic());
        call.setString(2, comment.getTopic_date());
        call.setInt(3, comment.getCommentor());
        call.setString(4, comment.getComment());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addAdmin(SchoolAdmin admin) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addAdmin(?, ?, ?, ?, ?, ?)}");
        //setting the parameters
        call.setString(1, admin.getAdmin_num());
        call.setString(2, admin.getName());
        call.setString(3, admin.getLastname());
        call.setString(4, admin.getUsername());
        call.setString(5, admin.getPassword());
        call.setString(6, admin.getSchool());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a admin.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addSubjectChat(Chat subj_chat) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addChat(?, ?, ?)}");
        //setting the parameters
        call.setString(1, subj_chat.getStudent_exam_num());
        call.setString(2, subj_chat.getComment_posted());
        call.setString(3, subj_chat.getSubject());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addStudent(StudentModel student) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addStudent(?, ?, ?, ?, ?, ?, ?, ?)}");
        //setting the parameters
        call.setString(1, student.getExam_number());
        call.setString(2, student.getLast_name());
        call.setString(3, student.getFirst_name());
        call.setString(4, student.getGrade());
        call.setString(5, student.getEmail());
        call.setString(6, student.getPassword());
        call.setString(7, student.getPhone());
        call.setString(8, student.getSchool_admin());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addTeacher(Register teacher) throws Exception {
        java.sql.CallableStatement call = null;
        if(teacher.getStaff_num()== null){
            throw new IllegalArgumentException("Enter valid staff number");
        }
        boolean isInserted=false;
                  
        Connection conn = null;
                  
        try {
                conn = this.getConnection();
                conn.setAutoCommit(false);
                call = conn.prepareCall("{call addTeacher(?,?,?,?,?,?,?)}");
                   
                call.setString(1, teacher.getStaff_num());
                call.setString(2, teacher.getLastname());
                call.setString(3,teacher.getFirst_name());
                call.setString(4, teacher.getEmail_address());
                call.setString(5, teacher.getPassword());
                call.setString(6, teacher.getCell_number());
                call.setString(7, teacher.getSchool_admin());
                  
                      //check execution status
             
                int status= call.executeUpdate(); 
                if ( status > 0 ){
                    isInserted = true;
                    conn.setAutoCommit(true);
                }else{
                    isInserted=false;
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return isInserted;
}
public boolean addSchoolAdmin(SchoolAdminModel school_admin) throws Exception {
        java.sql.CallableStatement call = null;
        if(school_admin.getSchool_admin_num()== 0){
            throw new IllegalArgumentException("Enter valid school admin number");
        }
        boolean isInserted=false;
                  
        Connection conn = null;
                  
        try {
                conn = this.getConnection();
                conn.setAutoCommit(false);
                call = conn.prepareCall("{call addTeacher(?,?,?,?,?,?)}");
                   
                call.setInt(1, school_admin.getStuff_num());
                call.setString(2, school_admin.getLast_name());
                call.setString(3,school_admin.getFirst_name());
                call.setString(4, school_admin.getEmail());
                call.setInt(5, school_admin.getCell_number());
                call.setInt(6, school_admin.getSchool_admin_num());
                  
                      //check execution status
             
                int status= call.executeUpdate(); 
                if ( status > 0 ){
                    isInserted = true;
                    conn.setAutoCommit(true);
                }else{
                    isInserted=false;
                }
        } catch (Exception e) {
            e.printStackTrace();
        }
    
    return isInserted;
}


public List loginCheck(String username, String password)throws Exception {
      //String query;
      boolean login = false;
      Connection conn = null;
      CallableStatement callStat = null;
      
      //String sql= "SELECT username, password FROM admins WHERE username=?";
        List adminList= new ArrayList();
      try{
          
          conn=this.getConnection();
          callStat = conn.prepareCall("{call login(?,?)}");
          callStat.setString(1, username);
          callStat.setString(2, password);
          
          ResultSet rs=callStat.executeQuery(); 
          while(rs.next()){
              login = true;
              AdminMaker admin = new AdminMaker();
              adminList.add(rs.getString(1));
              adminList.add(rs.getString(2));
              adminList.add(rs.getString(3));
       
            }
      }
      catch(SQLException e){
          e.printStackTrace();
      }
      return adminList;
  }  

/**
 * Charts
 */
public boolean postComment(Comments comment) throws Exception {
        CallableStatement call = null;
        if(comment.getExam_number() == null){
            throw new IllegalArgumentException("Enter valid staff number");
            
            
    }
        boolean isInserted=false;               
                  
       Connection conn = null;
       try{
       
            conn = this.getConnection();
            conn.setAutoCommit(false);
            call = conn.prepareCall("{call addChat(?,?,?,?)}");
            
            call.setString(1, comment.getExam_number());
            call.setString(2,comment.getLast_name());
            call.setString(3,comment.getFirst_name());
            call.setString(4,comment.getPost());
            
             int status= call.executeUpdate(); 
             if ( status > 0 ){
                isInserted = true;
                conn.setAutoCommit(true);
             }else{
                 isInserted=false;
                  }
            
            
       }catch(Exception e){
       e.printStackTrace();
        }
     return isInserted;
       }
    
public List getAllChats() throws Exception {
        ArrayList<Comments> list = new  ArrayList<Comments>();
        CallableStatement call = null;
        ResultSet result = null;
        Connection conn = null;
        
        try {
             conn = this.getConnection();
            conn.setAutoCommit(false);
            call = conn.prepareCall("{call getAllChats()}");
            result = call.executeQuery();
            while(result.next()){
                Comments comment = new Comments(result.getString(1),
                        result.getString(2),result.getString(3),result.getString(4),result.getTimestamp(5));
                    list.add(comment);
            }
            
        } catch (Exception e) {
        } 
        finally{
            result.close();
            call.close();
//            closeConnection();
        }
        
    return list;
    }
    
public boolean addFile(Upload upload) throws Exception {
        Connection conn=null;
        CallableStatement call=null;
        boolean isInserted=false;
        try{
        //connection to the db
        conn=getConnection();
        conn.setAutoCommit(false);
        call=conn.prepareCall("{call addFile(?,?,?,?)}");
        call.setString(1, upload.getFile_name());
        call.setString(2, upload.getSubject());
        call.setString(3, upload.getFile_description());
        call.setString(4, upload.getUploaded_by());
                                    
        int status = call.executeUpdate();

        isInserted = status>0;
        if(isInserted){
            conn.commit();
        }else{
            conn.rollback();
        }
        }
        catch(Exception exe){
            exe.printStackTrace();
        }
        return isInserted;
    }

public boolean addSubject(Subject subject) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addSubject(?, ?, ?, ?, ?)}");
        //setting the parameters
        call.setString(1, subject.getSub_name());
        call.setString(2, subject.getSub_description());
        call.setString(3, subject.getSub_class());
        call.setString(4, subject.getSub_teacher());
        call.setString(5, subject.getSchool_admin());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addStudent_Subject(Student_Subject stud_subj) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addStudent_Subject(?, ?)}");
        //setting the parameters
        call.setString(1, stud_subj.getStudent_exam_num());
        call.setString(2, stud_subj.getSubject_name());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addTeacher_Subject(Teacher_Subject teacher_subject) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addTeacher_Subject(?, ?)}");
        //setting the parameters
        call.setString(1, teacher_subject.getTeacher_num());
        call.setString(2, teacher_subject.getSubject_name());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a teacher subject.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}
public boolean addClass_Teacher(ClassTeacher class_teacher) throws Exception{
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addClass_Teacher(?, ?)}");
        //setting the parameters
        call.setString(1, class_teacher.getStaff_num());
        call.setString(2, class_teacher.getClass_name());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}

public boolean addClass(SchoolClass new_class) throws Exception {
   //to connect
   Connection conn = null;
   //to call stored statements
   CallableStatement call = null;
   boolean isAdded = false;
   
   try{
   
        //connecting to db
        conn = this.getConnection();
        //auto commit false
        conn.setAutoCommit(false);
        //calling stored statements
        call = conn.prepareCall("{call addClass(?, ?, ?)}");
        //setting the parameters
        call.setString(1, new_class.getClass_name());
        call.setString(2, new_class.getNumber_of_students());
        call.setString(3, new_class.getNumber_of_teachers());
        //ex
        int status = call.executeUpdate();
        
        isAdded = status > 0;
        if(isAdded){
            conn.commit(); // persisting data
        }else{
            conn.rollback();
            System.out.println("Error occured while addig a studnet.");
        }
        
   }catch(Exception exe){
       System.err.println("Error While Adding Student");
       exe.printStackTrace();
   }
   
   return isAdded;
}
}
