/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Order;

import Model.Account.User;
import Model.Service.Service;
import java.sql.Date;

/**
 *
 * @author nghia
 */
public class Cart {

    private int id;
    private User user;
    private Service service;
   
    private Date addCartDate;
    private Date dateExam;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Cart() {
    }

    public Cart(int id, User user, Service service, Date addCartDate, Date dateExam) {
        this.id = id;
        this.user = user;
        this.service = service;
     
        this.addCartDate = addCartDate;
        this.dateExam = dateExam;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    public Date getAddCartDate() {
        return addCartDate;
    }

    public void setAddCartDate(Date addCartDate) {
        this.addCartDate = addCartDate;
    }

    public Date getDateExam() {
        return dateExam;
    }

    public void setDateExam(Date dateExam) {
        this.dateExam = dateExam;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

}
