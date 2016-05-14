package com.zzkun.service;

import com.zzkun.dao.NewsDao;
import com.zzkun.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by kun on 2016/5/10.
 */
@Service
public class NewsService {

    @Autowired
    private NewsDao newsDao;

    public List<News> getAllNews() {
        return newsDao.getAllNews();
    }

    public void saveNews(News news) {
        news.setAddtime(new Date());
        System.out.println(news);
        newsDao.add(news);
    }

    public int getLatestNewsId() {
        News news = newsDao.getLatestNews();
        if(news == null) return 0;
        return news.getId();
    }

    public News getNews(int id) {
        return newsDao.getNewsById(id);
    }
}
