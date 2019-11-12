
package Product;

import Models.Product;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class ProductDAO {

    
    public List<Product> getProducts(int id) {
        System.out.println("In getProduct()");
        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
//        System.out.println("Transaction start");
        Query query = session.createQuery("from Models.Product p where p.pid='" + id + "'");
//        System.out.println("Query done");
        List<Product> product = query.list();
//        System.out.println("List ready");
        factory.close();
        return product;
    }
    
    public List<Product> getProducts(String category) {
        System.out.println("In getProduct()");
        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        System.out.println("Transaction start");
        Query query = session.createQuery("from Models.Product p where p.category='" + category + "'");
        System.out.println("Query done");
        List<Product> product = query.list();
        System.out.println("List ready");
        factory.close();
        return product;
    }
    
}
