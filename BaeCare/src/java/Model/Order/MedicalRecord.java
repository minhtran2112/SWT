/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Order;

import Model.Service.Service;

/**
 *
 * @author nhiep
 */
public class MedicalRecord {

    private int id;
    private String userName;
    private boolean gender;
    private String address;
    private String examinationDate;
    private String medicalHistory;

    private String preHistory;

    private Service firstExamService;
    private String reasonForHospitalization;
    private String phone;

    public MedicalRecord() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getExaminationDate() {
        return examinationDate;
    }

    public void setExaminationDate(String examinationDate) {
        this.examinationDate = examinationDate;
    }

    public String getMedicalHistory() {
        return medicalHistory;
    }

    public void setMedicalHistory(String medicalHistory) {
        this.medicalHistory = medicalHistory;
    }

    public String getPreHistory() {
        return preHistory;
    }

    public void setPreHistory(String preHistory) {
        this.preHistory = preHistory;
    }

    public Service getFirstExamService() {
        return firstExamService;
    }

    public void setFirstExamService(Service firstExamService) {
        this.firstExamService = firstExamService;
    }

    public String getReasonForHospitalization() {
        return reasonForHospitalization;
    }

    public void setReasonForHospitalization(String reasonForHospitalization) {
        this.reasonForHospitalization = reasonForHospitalization;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
