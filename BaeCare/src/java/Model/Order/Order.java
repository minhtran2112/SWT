
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Order;

import Model.Account.User;
import java.sql.Date;
import java.util.ArrayList;


/**
 *
 * @author Administrator
 */
public class Order {

    private int oid;
    private User customer;
    private Date dateOrder;
    private ArrayList<OrderDetail> orderDetail;
    private double totalPrice;

    private boolean status;

     public Order() {
    }

    public Order(int oid, User customer, Date dateOrder, ArrayList<OrderDetail> orderDetail, double totalPrice, boolean status) {
        this.oid = oid;
        this.customer = customer;
        this.dateOrder = dateOrder;
        this.orderDetail = orderDetail;
        this.totalPrice = totalPrice;
        this.status = status;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    public User getCustomer() {
        return customer;
    }

    public void setCustomer(User customer) {
        this.customer = customer;
    }

    public Date getDateOrder() {
        return dateOrder;
    }

    public void setDateOrder(Date dateOrder) {
        this.dateOrder = dateOrder;
    }

    public ArrayList<OrderDetail> getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(ArrayList<OrderDetail> orderDetail) {
        this.orderDetail = orderDetail;
    }

    public double getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(double totalPrice) {
        this.totalPrice = totalPrice;
    }

    



  

}
