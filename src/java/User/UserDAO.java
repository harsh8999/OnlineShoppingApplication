package User;

import Models.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class UserDAO {

    public List<User> getUser(String email) {
        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        Query query = session.createQuery("FROM Models.User U WHERE U.email='" + email + "'");
        List<User> user = query.list();
        factory.close();
        return user;
    }
    
    public List<User> getUser(int id) {
        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        Query query = session.createQuery("FROM Models.User U WHERE U.uid='" + id + "'");
        List<User> user = query.list();
        factory.close();
        return user;
    }
}
