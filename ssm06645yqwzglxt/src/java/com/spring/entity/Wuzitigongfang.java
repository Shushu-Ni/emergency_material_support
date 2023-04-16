package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "wuzitigongfang")
public class Wuzitigongfang implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "mingcheng")
    private String mingcheng;
    @Column(name = "fuzeren")
    private String fuzeren;
    @Column(name = "lianxifangshi")
    private String lianxifangshi;
    @Column(name = "youxiang")
    private String youxiang;
    @Column(name = "dizhi")
    private String dizhi;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getMingcheng() {
        return mingcheng;
    }
    public void setMingcheng(String mingcheng) {
        this.mingcheng = mingcheng == null ? "" : mingcheng.trim();
    }

    public String getFuzeren() {
        return fuzeren;
    }
    public void setFuzeren(String fuzeren) {
        this.fuzeren = fuzeren == null ? "" : fuzeren.trim();
    }

    public String getLianxifangshi() {
        return lianxifangshi;
    }
    public void setLianxifangshi(String lianxifangshi) {
        this.lianxifangshi = lianxifangshi == null ? "" : lianxifangshi.trim();
    }

    public String getYouxiang() {
        return youxiang;
    }
    public void setYouxiang(String youxiang) {
        this.youxiang = youxiang == null ? "" : youxiang.trim();
    }

    public String getDizhi() {
        return dizhi;
    }
    public void setDizhi(String dizhi) {
        this.dizhi = dizhi == null ? "" : dizhi.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
