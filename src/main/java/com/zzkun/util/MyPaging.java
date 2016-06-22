package com.zzkun.util;

import com.zzkun.model.PageInfo;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页工具
 * Created by kun on 2016/5/17.
 */
public class MyPaging<T> {

    private static Log logger = LogFactory.getLog(MyPaging.class);

    private List<T> all;
    private int onePageCnt;

    public MyPaging(List<T> all, int onePageCnt) {
        this.all = all;
        this.onePageCnt = onePageCnt;
    }

    /**
     * 得到第i页的内容
     * @param index 页面编号，从0开始
     * @return 第i页的内容
     */
    public PageInfo<T> getPage(int index) {
        int pageSum = ((all.size()-1)/onePageCnt) + 1;
        if(index < 0 || index >= pageSum)
            return null;
        logger.info("pagesum:" + pageSum + ", index:" + index);
        List<T> list = new ArrayList<>();
        for(int i = index * onePageCnt; i < all.size() && i < (index + 1) * onePageCnt; ++i)
            list.add(all.get(i));
        PageInfo<T> result = new PageInfo<>(list, onePageCnt, index, pageSum);
        logger.info("getPage:" + result);
        return result;
    }
}
