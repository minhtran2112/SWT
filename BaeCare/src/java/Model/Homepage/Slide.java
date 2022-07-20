/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Homepage;

public class Slide {

    private int slideID;
    private String slideTitle;
    private String slideDetail;
    private String slideImg;
    private String slideDate;
    private boolean onHomepage;

    public Slide() {
    }

    public Slide(int slideID, String slideTitle, String slideDetail, String slideImg, String slideDate, boolean onHomepage) {
        this.slideID = slideID;
        this.slideTitle = slideTitle;
        this.slideDetail = slideDetail;
        this.slideImg = slideImg;
        this.slideDate = slideDate;
        this.onHomepage = onHomepage;
    }

    public int getSlideID() {
        return slideID;
    }

    public String getSlideTitle() {
        return slideTitle;
    }

    public String getSlideDetail() {
        return slideDetail;
    }

    public String getSlideImg() {
        return slideImg;
    }

    public String getSlideDate() {
        return slideDate;
    }

    public boolean isOnHomepage() {
        return onHomepage;
    }

    public void setSlideID(int slideID) {
        this.slideID = slideID;
    }

    public void setSlideTitle(String slideTitle) {
        this.slideTitle = slideTitle;
    }

    public void setSlideDetail(String slideDetail) {
        this.slideDetail = slideDetail;
    }

    public void setSlideImg(String slideImg) {
        this.slideImg = slideImg;
    }

    public void setSlideDate(String slideDate) {
        this.slideDate = slideDate;
    }

    public void setOnHomepage(boolean onHomepage) {
        this.onHomepage = onHomepage;
    }

}
