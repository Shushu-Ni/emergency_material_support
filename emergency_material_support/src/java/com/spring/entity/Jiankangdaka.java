package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "jiankangdaka")
public class Jiankangdaka implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "xingming")
    private String xingming;
    @Column(name = "shijian")
    private String shijian;
    @Column(name = "didian")
    private String didian;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "dakaren")
    private String dakaren;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getShijian() {
        return shijian;
    }
    public void setShijian(String shijian) {
        this.shijian = shijian == null ? "" : shijian.trim();
    }

    public String getDidian() {
        return didian;
    }
    public void setDidian(String didian) {
        this.didian = didian == null ? "" : didian.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getDakaren() {
        return dakaren;
    }
    public void setDakaren(String dakaren) {
        this.dakaren = dakaren == null ? "" : dakaren.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
