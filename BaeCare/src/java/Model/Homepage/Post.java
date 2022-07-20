/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model.Homepage;

import java.sql.Date;

public class Post {

    private int postID;
    private String postTitle;
    private String postDetail;
    private String postImg;
    private Date postDate;
    private boolean onHomepage;
    private Category category;
    private Author author;

    public Post() {
    }

    public Post(int postID, String postTitle, String postDetail, String postImg, Date postDate, boolean onHomepage, Category category, Author author) {
        this.postID = postID;
        this.postTitle = postTitle;
        this.postDetail = postDetail;
        this.postImg = postImg;
        this.postDate = postDate;
        this.onHomepage = onHomepage;
        this.category = category;
        this.author = author;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public String getPostTitle() {
        return postTitle;
    }

    public void setPostTitle(String postTitle) {
        this.postTitle = postTitle;
    }

    public String getPostDetail() {
        return postDetail;
    }

    public void setPostDetail(String postDetail) {
        this.postDetail = postDetail;
    }

    public String getPostImg() {
        return postImg;
    }

    public void setPostImg(String postImg) {
        this.postImg = postImg;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public boolean isOnHomepage() {
        return onHomepage;
    }

    public void setOnHomepage(boolean onHomepage) {
        this.onHomepage = onHomepage;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Author getAuthor() {
        return author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }
}
