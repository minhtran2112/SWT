/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Account;

import java.sql.Date;

public class User {

    private String name;
    private boolean gender;
    private String email;
    private String phone;
    private String address;
    private Date dob;
    private String photo;
    private Role role;
    private boolean status;
    private String password;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public User(String name, boolean gender, String email, String phone, String address, Date dob, String photo, Role role, boolean status, String password) {
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.dob = dob;
        this.photo = photo;
        this.role = role;
        this.status = status;
        this.password = password;
    }

    public User() {
    }

    public User(String name, boolean gender, String email, String phone, String address, Date dob, String photo) {
        this.name = name;
        this.gender = gender;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.dob = dob;
        this.photo = photo;
    }

    public String getName() {
        return name;
    }

    public boolean isGender() {
        return gender;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public Date getDob() {
        return dob;
    }

    public String getPhoto() {
        return photo;
    }

    public boolean isStatus() {
        return status;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
}
