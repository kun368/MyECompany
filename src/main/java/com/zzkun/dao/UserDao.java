package com.zzkun.dao;

import com.zzkun.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by kun on 2016/5/7.
 */
@Repository
public class UserDao {

    @Autowired
    private JdbcTemplate jdbc;

    public User add(User user) {
        String sql = "INSERT INTO `user` (`username`, `password`, `power`) VALUES (?, ?, ?)";
        int res = jdbc.update(sql, user.getUsername(), user.getPassword(), user.getPower());
        if(res == 0) return null;
        return findByUsername(user.getUsername());
    }

    public User findByUsername(String username) {
        String sql = "select id, username, password, power from user where username=?";
        User user = new User();
        jdbc.query(sql, new Object[]{username}, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                user.setId(resultSet.getInt("id"));
                user.setUsername(resultSet.getString("username"));
                user.setPassword(resultSet.getString("password"));
                user.setPower(resultSet.getInt("power"));
            }
        });
        return user;
    }
}
