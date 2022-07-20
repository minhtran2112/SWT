/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.medical;

import Model.Order.Order;
import Model.Order.OrderDetail;
import Model.Service.Service;
import Model.medical.Medicine;

/**
 *
 * @author nhiep
 */
public class MedicinePrescript {

    private int odId;
    private Medicine medicine;
    private int quantity;
    private String prescription;
    private String addPrescriptDate;

    public MedicinePrescript() {
    }

    public String getAddPrescriptDate() {
        return addPrescriptDate;
    }

    public void setAddPrescriptDate(String addPrescriptDate) {
        this.addPrescriptDate = addPrescriptDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPrescription() {
        return prescription;
    }

    public void setPrescription(String prescription) {
        this.prescription = prescription;
    }

    public Medicine getMedicine() {
        return medicine;
    }

    public void setMedicine(Medicine medicine) {
        this.medicine = medicine;
    }

    public int getOdId() {
        return odId;
    }

    public void setOdId(int odId) {
        this.odId = odId;
    }

    @Override
    public String toString() {
        return "MedicinePrescript{" + "odId=" + odId + ", medicine=" + medicine + ", quantity=" + quantity + ", prescription=" + prescription + ", addPrescriptDate=" + addPrescriptDate + '}';
    }


}
