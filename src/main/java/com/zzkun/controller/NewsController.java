package com.zzkun.controller;

import com.zzkun.model.News;
import com.zzkun.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;

/**
 * Created by kun on 2016/5/10.
 */
@Controller
@RequestMapping("/news")
public class NewsController {

    @Autowired
    private NewsService newsService;

    @RequestMapping("/list")
    public ModelAndView list() {
        return new ModelAndView("news/List", "newslist", newsService.getAllNews());
    }

    @RequestMapping("/add")
    public ModelAndView add() {
        return new ModelAndView("news/Add", "news", new News());
    }

    @RequestMapping("/save")
    public ModelAndView save(@Valid @ModelAttribute News news, BindingResult bindingResult) {
        if(bindingResult.hasErrors()) {
            FieldError fieldError = bindingResult.getFieldError();
            System.out.println("错误" + fieldError.getField());
            return new ModelAndView("news/Add");
        }
        newsService.saveNews(news);
        return new ModelAndView("redirect:/news/detail/" + newsService.getLatestNewsId());
    }

    @RequestMapping("/detail/{id}")
    public ModelAndView detail(@PathVariable int id) {
        return new ModelAndView("news/Detail", "news", newsService.getNews(id));
    }
}
