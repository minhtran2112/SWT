/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Service;

import java.sql.Date;

public class Service {

    private int sid;
    private String sname;
    private boolean status;
    private double original_price;
    private double sale_price;

    private String details;
    private Date updated_date;
    private String photo;
    private ServiceType st;

    public Service() {
    }

    public Service(int sid, String sname, boolean status, double original_price, double sale_price, String details, Date updated_date, String photo, ServiceType st) {

        this.sid = sid;
        this.sname = sname;
        this.status = status;
        this.original_price = original_price;
        this.sale_price = sale_price;
        this.details = details;

        this.updated_date = updated_date;
        this.photo = photo;
        this.st = st;

    }

    public int getSid() {
        return sid;
    }

    public void setSid(int sid) {
        this.sid = sid;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public double getOriginal_price() {
        return original_price;
    }

    public void setOriginal_price(double original_price) {
        this.original_price = original_price;
    }

    public double getSale_price() {
        return sale_price;
    }

    public void setSale_price(double sale_price) {
        this.sale_price = sale_price;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public Date getUpdated_date() {
        return updated_date;
    }

    public void setUpdated_date(Date updated_date) {
        this.updated_date = updated_date;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public ServiceType getSt() {
        return st;
    }

    public void setSt(ServiceType st) {
        this.st = st;
    }

    

}
