/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Feedback;

import Model.Account.User;
import Model.Order.Order;
import Model.Order.OrderDetail;
import Model.Service.Service;

/**
 *
 * @author Administrator
 */
public class Feedback {
    private int fid;
    private String fphoto;
    private int star;
    private String detail;
    private User user;
    private Service service;
    private Order order;
    private OrderDetail orderDetail;
    private boolean status;

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public Feedback(int fid, String fphoto, int star, String detail, User user, Service service, Order order, boolean status) {
        this.fid = fid;
        this.fphoto = fphoto;
        this.star = star;
        this.detail = detail;
        this.user = user;
        this.service = service;
        this.order = order;
        this.status = status;
    }

    public Order getOrder() {
        return order;
    }

    public void setOrder(Order order) {
        this.order = order;
    }
    
    public Feedback() {
    }

    public Feedback(int fid, String fphoto, int star, String detail, User user, Service service) {
        this.fid = fid;
        this.fphoto = fphoto;
        this.star = star;
        this.detail = detail;
        this.user = user;
        this.service = service;
    }

    public Feedback( String fphoto, int star, String detail, User user, Service service, Order order) {
        this.fphoto = fphoto;
        this.star = star;
        this.detail = detail;
        this.user = user;
        this.service = service;
        this.order = order;
    }

    public OrderDetail getOrderDetail() {
        return orderDetail;
    }

    public void setOrderDetail(OrderDetail orderDetail) {
        this.orderDetail = orderDetail;
    }

    
    

    public int getFid() {
        return fid;
    }

    public void setFid(int fid) {
        this.fid = fid;
    }

    public String getFphoto() {
        return fphoto;
    }

    public void setFphoto(String fphoto) {
        this.fphoto = fphoto;
    }

    public int getStar() {
        return star;
    }

    public void setStar(int star) {
        this.star = star;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }
    
}
