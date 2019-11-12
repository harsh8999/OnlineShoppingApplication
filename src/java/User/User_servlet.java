package User;

import Models.User;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class User_servlet extends HttpServlet {

//    private String getFileName(final Part part) {
//        final String partHeader = part.getHeader("content-disposition");
//
//        for (String content : part.getHeader("content-disposition").split(";")) {
//            if (content.trim().startsWith("filename")) {
//                return content.substring(
//                        content.indexOf('=') + 1).trim().replace("\"", "");
//            }
//        }
//        return null;
//    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

//            out.println("in processRequest");
            String firstname = request.getParameter("firstName");
            String lastname = request.getParameter("lastName");
            int age = Integer.parseInt(request.getParameter("age"));
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String gender = request.getParameter("gender");
            long phone = Long.parseLong(request.getParameter("phoneNumber"));
            String country = request.getParameter("country");
            String city = request.getParameter("city");
            long pincode = Long.parseLong(request.getParameter("pincode"));
            String state = request.getParameter("state");
//            String profilePic = request.getParameter("file");

//            out.print(profilePic);
//            out.println(profilePic.toString());
            out.println("got data");

//            Part filePart = request.getPart("filecover");
//
//            String photo = "";
//            String path = "path here";
//
//            File file = new File(path);
//            file.mkdir();
//            String fileName = getFileName(filePart);

//            
//            InputStream filecontent = null;
//
//            PrintWriter writer = response.getWriter();
//            try {
//                OutputStream out = null;
//                out = new FileOutputStream(new File(path + File.separator + fileName));
//
//                filecontent = filePart.getInputStream();
//
//                int read = 0;
//                final byte[] bytes = new byte[1024];
//
//                while ((read = filecontent.read(bytes)) != -1) {
//                    out.write(bytes, 0, read);
//
//                    photo = path + "/" + fileName;
//
//                }
//            }catch(Exception e){}
//            String fname = "";
//            
//            if(!ServletFileUpload.isMultipartContent(request)){
//                String UPLOAD_DIRECTORY = "D:/sem5/WAD/Project/myPersonalProject/src/java/ProfilePics/";
//                try{
//                    List<FileItem> multipart = new ServletFileUpload(new DiskFileItemFactory()).parseRequest((RequestContext) request);
//                    
//                    for(FileItem item : multipart){
//                        if(!item.isFormField()){
//                            fname = new File(item.getName()).getName();
//                            item.write(new File(UPLOAD_DIRECTORY + File.separator + fname));
//                        }
//                    }
//                    
//                }catch(Exception e){
//                    out.println("File upload problem");
//                }
//            }
//            
            SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = factory.openSession();
            Transaction t = session.beginTransaction();

//            out.println("session created");
            User user = new User();
            user.setFirstName(firstname);
            user.setLastName(lastname);
            user.setAge(age);
            user.setEmail(email);
            user.setCity(city);
            user.setState(state);
            user.setCountry(country);
            user.setGender(gender);
            user.setPassword(password);
            user.setPhoneNumber(phone);
            user.setPincode(pincode);

            java.util.Date date = new java.util.Date();
            user.setCreatedOn(date);

            session.save(user);

            t.commit();
            out.println("Saved");
            factory.close();
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(User_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(User_servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "This Servlet is to register users";
    }

}
