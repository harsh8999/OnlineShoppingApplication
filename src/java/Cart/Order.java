package Cart;

import Models.Cart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class Order extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String address = request.getParameter("address");
            String country = request.getParameter("country");
            int zip = Integer.parseInt(request.getParameter("zip"));
            String paymentMethod = request.getParameter("paymentMethod");
            String state = request.getParameter("state");

            HttpSession session_ = request.getSession();
            CartDAO cartdao = new CartDAO();
            int cid = (Integer) session_.getAttribute("id");
            List<Cart> cart = cartdao.getCartItems(cid);
            for (Cart c : cart) {
                
                c.getCartId();
                int res = cartdao.updateCart(c.getCartId(),address,country,paymentMethod,state,"done");
//                c.setAddress(address);
//                c.setCountry(country);
//                c.setPayment(paymentMethod);
//                c.setState(state);
//                c.setOrderStatus("done");
//                session.save(c);
            }

            

            response.sendRedirect("index.jsp");
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
