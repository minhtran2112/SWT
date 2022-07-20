/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Order;

import Model.Account.User;
import Model.Service.Service;
import Model.medical.MedicinePrescript;
import java.sql.Date;
import java.util.List;

/**
 *
 * @author Administrator
 */
public class OrderDetail {

    private int odId;
    private int oId;

    private Service service;
    private User doctor;
    private Date examDate;
    private boolean examStatus;
    private double price;
    private Date checkoutDate;
    private boolean medicalStatus;

    private List<MedicinePrescript> medicinePrescript;

    private MedicalRecord medicalRecord;
    private String resultNote;
    private String symptom;
    private int ordinalNumber;

    public OrderDetail() {

    }

    public int getOdId() {
        return odId;
    }

    public void setOdId(int odId) {
        this.odId = odId;
    }

    public int getoId() {
        return oId;
    }

    public void setoId(int oId) {
        this.oId = oId;
    }

    public Service getService() {
        return service;
    }

    public void setService(Service service) {
        this.service = service;
    }

    public User getDoctor() {
        return doctor;
    }

    public void setDoctor(User doctor) {
        this.doctor = doctor;
    }

    public Date getExamDate() {
        return examDate;
    }

    public void setExamDate(Date examDate) {
        this.examDate = examDate;
    }

    public boolean isExamStatus() {
        return examStatus;
    }

    public void setExamStatus(boolean examStatus) {
        this.examStatus = examStatus;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getCheckoutDate() {
        return checkoutDate;
    }

    public void setCheckoutDate(Date checkoutDate) {
        this.checkoutDate = checkoutDate;
    }

    public boolean isMedicalStatus() {
        return medicalStatus;
    }

    public void setMedicalStatus(boolean medicalStatus) {
        this.medicalStatus = medicalStatus;
    }

    public List<MedicinePrescript> getMedicinePrescript() {
        return medicinePrescript;
    }

    public void setMedicinePrescript(List<MedicinePrescript> medicinePrescript) {
        this.medicinePrescript = medicinePrescript;
    }

    public MedicalRecord getMedicalRecord() {
        return medicalRecord;
    }

    public void setMedicalRecord(MedicalRecord medicalRecord) {
        this.medicalRecord = medicalRecord;
    }

    public String getResultNote() {
        return resultNote;
    }

    public void setResultNote(String resultNote) {
        this.resultNote = resultNote;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public int getOrdinalNumber() {
        return ordinalNumber;
    }

    public void setOrdinalNumber(int ordinalNumber) {
        this.ordinalNumber = ordinalNumber;
    }

}
