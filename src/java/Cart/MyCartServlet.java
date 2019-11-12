/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import Models.Cart;
import Models.User;
import User.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
@WebServlet(name ="MyCartServlet",urlPatterns ="/cart")
public class MyCartServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession httpsession = request.getSession();

            String[] i = request.getQueryString().split("&");

            String pid = i[0].substring(4);
//            out.print(pid);
            String category = i[1].substring(9);
//            out.print(category);
            String subcategory = i[2].substring(12);
//            out.print(subcategory);
            
            SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = factory.openSession();
            Transaction t = session.beginTransaction();
            Cart cart = new Cart();
            
//            UserDAO userdao = new UserDAO();
//            List<User> userlist = userdao.getUser((int) httpsession.getAttribute("id"));
//            User user = userlist.get(0);
//            cart.setUser((Collection<User>) user);
//            
            cart.setCustomerID((int) httpsession.getAttribute("id"));
            cart.setOrderStatus("pending");
            cart.setProductID(Integer.parseInt(pid));
            java.util.Date date = new java.util.Date();
            cart.setOrderPlacedDate(date);
            cart.setStatus("un-delivered");
            
//            cart.setAddress("");
//            cart.setCountry("");
//            cart.setPayment("");
//            cart.setState("");
//            cart.setZip(0);
            
            
            session.save(cart);
            t.commit();
//            out.println("Saved");
            factory.close();
            response.sendRedirect("products_show.jsp?category=" + category + "&subcategory=" + subcategory);
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
