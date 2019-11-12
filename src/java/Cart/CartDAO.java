/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Cart;

import Models.Cart;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;

public class CartDAO {

    public List<Cart> getCartItems(int cid) {

        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
//        System.out.println("Transaction start");
        Query query = session.createQuery("from Models.Cart c where c.customerID ='" + cid + "' and c.status='un-delivered'  and c.orderStatus='pending'");
//        System.out.println("Query done");
        List<Cart> cart = query.list();
//        System.out.println("List ready");
        factory.close();
        return cart;
    }

    public int removeCartItem(int cid) {

        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
//        Object o = session.load(Cart.class, cid);
//        Cart c = (Cart)o;
//        session.delete(c);
//        System.out.println("Transaction start");
        Query query = session.createQuery("delete from Models.Cart c where c.cartId ='" + cid + "'");
        int res = query.executeUpdate();
        t.commit();
        factory.close();
        return 1;
//        return res;
    }

    public int updateCart(int cartID, String address, String country, String paymentMethod, String state, String orderStatus) {
        SessionFactory factory = new AnnotationConfiguration().configure().buildSessionFactory();
        Session session = factory.openSession();
        Transaction t = session.beginTransaction();
        
        Query query = session.createQuery("Update Models.Cart c set c.address='"+address+ "', c.country='"+ country+ "', c.state='"+ state+ "', c.payment='"+ paymentMethod+ "', c.orderStatus='"+ orderStatus+ "' where c.cartId ='" + cartID + "'");

        int status = query.executeUpdate();
        t.commit();
        factory.close();
        return status;
    }

}
