package com.yuth.tower.service.model.rsp;

import java.util.List;

public class ReturnList<T> {

    private List<T> records;

    private int total;

    private int pages;

    private int current;

    private int size;


    public ReturnList() {
    }

    public ReturnList(List<T> lst, long total) {
        this.records = lst;
        this.total = (int) total;
    }

    public ReturnList(List<T> lst, int total, int pageNum, int pageSize) {
        super();
        this.records = lst;
        this.total = total;
        this.current = pageNum;
        this.size = pageSize;

        this.pages = (int) Math.ceil(new Double(total) / size);
    }

    public List<T> getRecords() {
        return records;
    }

    public void setRecords(List<T> records) {
        this.records = records;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }

}
