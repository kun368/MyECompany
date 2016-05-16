package com.zzkun.dao;

import com.zzkun.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowCallbackHandler;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by kun on 2016/5/11.
 */
@Repository
public class ProductDao {

    @Autowired
    private JdbcTemplate jdbc;

    private class ProductRowMapper implements RowMapper<Product> {
        @Override
        public Product mapRow(ResultSet resultSet, int i) throws SQLException {
            Product product = new Product();
            product.setId(resultSet.getInt("id"));
            product.setName(resultSet.getString("name"));
            product.setIntro(resultSet.getString("intro"));
            product.setAddtime(resultSet.getTimestamp("addtime"));
            product.setPrice(resultSet.getDouble("price"));
            product.setAddress(resultSet.getString("address"));
            product.setActivity(resultSet.getString("activity"));
            return product;
        }
    }

    public void setImageUrlList(Product product) {
        product.getImageurl().clear();
        product.getImagemain().clear();
        String sql = "SELECT * FROM product_img WHERE product_img.productid = ?";
        jdbc.query(sql, new Object[]{product.getId()}, new RowCallbackHandler() {
            @Override
            public void processRow(ResultSet resultSet) throws SQLException {
                int type = resultSet.getInt("type");
                if(type == 1) product.getImageurl().add(resultSet.getString("imageurl"));
                else if(type == 2) product.getImagemain().add(resultSet.getString("imageurl"));
            }
        });
    }

    public List<Product> getAllProduct() {
        String sql = "SELECT * FROM product ORDER BY product.addtime DESC";
        List<Product> list = jdbc.query(sql, new ProductRowMapper());
        if(list == null || list.isEmpty()) return null;
        for(Product product : list)
            setImageUrlList(product);
        return list;
    }

    public Product getProductById(int id) {
        String sql = "SELECT * FROM product WHERE product.id = ?";
        Product product = jdbc.queryForObject(sql, new Object[]{id}, new ProductRowMapper());
        setImageUrlList(product);
        return product;
    }
}
