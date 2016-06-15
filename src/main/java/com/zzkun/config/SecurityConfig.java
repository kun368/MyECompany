package com.zzkun.config;

import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

/**
 * Created by Administrator on 2016/5/18.
 */
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private ComboPooledDataSource dataSource;


    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin().loginPage("/auth/login");
        http.logout().logoutUrl("/auth/logout");
        http.authorizeRequests().regexMatchers(".*add.*").authenticated()
                .regexMatchers(".*admin.*").authenticated()
                .anyRequest().permitAll();
        http.rememberMe().key("codekun");
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication().dataSource(dataSource);
    }
}
