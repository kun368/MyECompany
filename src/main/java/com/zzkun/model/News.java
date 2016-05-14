package com.zzkun.model;

import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;

/**
 * 新闻类
 * Created by kun on 2016/5/10.
 */
public class News implements Serializable {

    private int id;

    @Size(min = 3, max = 50)
    private String title;

    @Size(min = 3)
    private String content;

    private int userid;
    private Date addtime;

    public News() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public Date getAddtime() {
        return addtime;
    }

    public void setAddtime(Date addtime) {
        this.addtime = addtime;
    }

    @Override
    public String toString() {
        return "News{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", userid='" + userid + '\'' +
                ", addtime=" + addtime +
                '}';
    }
}
