package User;

import Models.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import org.hibernate.Query;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class Login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String email = request.getParameter("email");
            String password = request.getParameter("password");

            SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
            Session session = factory.openSession();

            Transaction tx = session.beginTransaction();

            Query query = session.createQuery("FROM Models.User U WHERE U.email='" + email + "'");
            List<User> list = query.list();

            for (User u : list) {
                if (password.equals(u.getPassword())) {
                    HttpSession httpSession = request.getSession();
                    httpSession.setAttribute("email", email);
                    httpSession.setAttribute("password", password);
                    httpSession.setAttribute("id", u.getUid());
                    response.sendRedirect("index.jsp");
                } else {
                    response.sendRedirect("index.jsp");
                }
            }
            factory.close();

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet file for login";
    }

}
