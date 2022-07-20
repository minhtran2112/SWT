/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Account;

import Model.Service.ServiceType;

/**
 *
 * @author nhiep
 */
public class Doctor {
    private User user;
    private String position;
    private String trainingProcess;
    private String workingProcess;
    private String researchWork;
    private String scientificResearchTopics;
    private String bonus;
    private String twitter;
    private String facebook;
    private String linkedin;
    private String instagram;
    private ServiceType serviceType;

    public Doctor() {
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getTrainingProcess() {
        return trainingProcess;
    }

    public void setTrainingProcess(String trainingProcess) {
        this.trainingProcess = trainingProcess;
    }

    public String getWorkingProcess() {
        return workingProcess;
    }

    public void setWorkingProcess(String workingProcess) {
        this.workingProcess = workingProcess;
    }

    public String getResearchWork() {
        return researchWork;
    }

    public void setResearchWork(String researchWork) {
        this.researchWork = researchWork;
    }

    public String getScientificResearchTopics() {
        return scientificResearchTopics;
    }

    public void setScientificResearchTopics(String scientificResearchTopics) {
        this.scientificResearchTopics = scientificResearchTopics;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public String getTwitter() {
        return twitter;
    }

    public void setTwitter(String twitter) {
        this.twitter = twitter;
    }

    public String getFacebook() {
        return facebook;
    }

    public void setFacebook(String facebook) {
        this.facebook = facebook;
    }

    public String getLinkedin() {
        return linkedin;
    }

    public void setLinkedin(String linkedin) {
        this.linkedin = linkedin;
    }

    public String getInstagram() {
        return instagram;
    }

    public void setInstagram(String instagram) {
        this.instagram = instagram;
    }

    public ServiceType getServiceType() {
        return serviceType;
    }

    public void setServiceType(ServiceType serviceType) {
        this.serviceType = serviceType;
    }
}
