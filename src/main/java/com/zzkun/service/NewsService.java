package com.zzkun.service;

import com.zzkun.dao.NewsDao;
import com.zzkun.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by kun on 2016/5/10.
 */
@Service
public class NewsService {

    @Autowired
    private NewsDao newsDao;

    public List<News> getAllNews() {
        return newsDao.queryAllNews();
    }


}
