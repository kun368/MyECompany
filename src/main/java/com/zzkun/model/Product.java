package com.zzkun.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by kun on 2016/5/11.
 */
public class Product implements Serializable {

    private int id;
    private String name;
    private double price;
    private String intro;
    private Date addtime;
    private String address;
    private String activity;
    private List<String> imageurl;

    public Product() {
        imageurl = new ArrayList<>();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public void addImageUrl(String url) {
        imageurl.add(url);
    }

    public void setImageurl(List<String> imageurl) {
        this.imageurl = imageurl;
    }

    public List<String> getImageurl() {
        return imageurl;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", intro='" + intro + '\'' +
                ", addtime=" + addtime +
                ", address='" + address + '\'' +
                ", activity='" + activity + '\'' +
                ", imageurl=" + imageurl +
                '}';
    }
}
