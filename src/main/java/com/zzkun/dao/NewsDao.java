package com.zzkun.dao;

import com.zzkun.model.News;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kun on 2016/5/10.
 */
@Repository
public class NewsDao {

    @Autowired
    private JdbcTemplate jdbc;

    /**
     * 将数据中的每一行数据封装成定义的News类.
     */
    private class NewsRowMapper implements RowMapper<News> {
        @Override
        public News mapRow(ResultSet resultSet, int i) throws SQLException {
            News news = new News();
            news.setId(resultSet.getInt("id"));
            news.setTitle(resultSet.getString("title"));
            news.setContent(resultSet.getString("content"));
            news.setAddtime(resultSet.getTimestamp("addtime"));
            return news;
        }
    }

    public List<News> getAllNews() {
        String sql = "SELECT * FROM `news` ORDER BY id DESC";
        return jdbc.query(sql, new NewsRowMapper());
    }

    public News getNewsById(int id) {
        String sql = "SELECT * FROM `news` where id = ?";
        List<News> res = jdbc.query(sql, new Object[]{id}, new NewsRowMapper());
        if(res == null || res.isEmpty()) return null;
        return res.get(0);
    }

    public News getLatestNews() {
        String sql = "SELECT * FROM `news` ORDER BY id DESC LIMIT 0, 1";
        return jdbc.queryForObject(sql, new NewsRowMapper());
    }

    public void add(News news) {
        String sql = "INSERT INTO `news` (`title`, `content`, `addtime`) VALUES (?, ?, ?)";
        jdbc.update(sql, news.getTitle(), news.getContent(), news.getAddtime());
    }
}
