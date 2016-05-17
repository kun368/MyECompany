package com.zzkun.dao;

import java.util.List;

/**
 * 页面信息，定义第0页为第一个
 * Created by kun on 2016/5/17.
 */
public class PageInfo<T> {

    private List<T> list;
    private boolean isFirstPage;
    private boolean isLastPage;
    private int pageSum;
    private int pageIndex;
    private int onePageCnt;

    public PageInfo(List<T> list, int onePageCnt, int pageIndex, int pageSum) {
        this.list = list;
        this.onePageCnt = onePageCnt;
        this.pageIndex = pageIndex;
        this.pageSum = pageSum;
        this.isFirstPage = pageIndex == 0;
        this.isLastPage = pageIndex == pageSum-1;
    }

    public List<T> getList() {
        return list;
    }

    public boolean isFirstPage() {
        return isFirstPage;
    }

    public boolean isLastPage() {
        return isLastPage;
    }

    public int getPageSum() {
        return pageSum;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public int getOnePageCnt() {
        return onePageCnt;
    }

    @Override
    public String toString() {
        return "PageInfo{" +
                "list=" + list.size() +
                ", isFirstPage=" + isFirstPage +
                ", isLastPage=" + isLastPage +
                ", pageSum=" + pageSum +
                ", pageIndex=" + pageIndex +
                ", onePageCnt=" + onePageCnt +
                '}';
    }
}
