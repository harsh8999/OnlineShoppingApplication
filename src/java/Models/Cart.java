package Models;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;

@Entity
@Table(name = "Cart")
public class Cart implements Serializable {

    public Cart() {
    }

    @Id
    @GeneratedValue
    private int cartId;
    private int customerID;
    private int productID;
    private String address;    
    private String state;
    private String country;
    private int zip;
    private String payment;
    
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date orderPlacedDate;
    private String status;
    private String orderStatus;
    
    
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public long getZip() {
        return zip;
    }

    public void setZip(int zip) {
        this.zip = zip;
    }

    public String getPayment() {
        return payment;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }
    
    
    
    
    public int getCustomerID() {
        return customerID;
    }

    public void setCustomerID(int customerID) {
        this.customerID = customerID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }
    
    
//    @OneToMany
//    private Collection<User> user;
//    
//    @OneToMany
//    private Collection<Product> product;

//    public Collection<User> getUser() {
//        return user;
//    }
//
//    public void setUser(Collection<User> user) {
//        this.user = user;
//    }
//
//    public Collection<Product> getProduct() {
//        return product;
//    }
//
//    public void setProduct(Collection<Product> product) {
//        this.product = product;
//    }
//    

    public String getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(String orderStatus) {
        this.orderStatus = orderStatus;
    }



    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getOrderPlacedDate() {
        return orderPlacedDate;
    }

    public void setOrderPlacedDate(Date orderPlacedDate) {
        this.orderPlacedDate = orderPlacedDate;
    }

    
    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
    }

}
