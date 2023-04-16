package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "wuzixinxi")
public class Wuzixinxi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "bianhao")
    private String bianhao;
    @Column(name = "mingcheng")
    private String mingcheng;
    @Column(name = "tupian")
    private String tupian;
    @Column(name = "leixing")
    private String leixing;
    @Column(name = "danwei")
    private String danwei;
    @Column(name = "wuzitigongfang")
    private String wuzitigongfang;
    @Column(name = "kucun")
    private Integer kucun;
    @Column(name = "miaoshu")
    private String miaoshu;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getBianhao() {
        return bianhao;
    }
    public void setBianhao(String bianhao) {
        this.bianhao = bianhao == null ? "" : bianhao.trim();
    }

    public String getMingcheng() {
        return mingcheng;
    }
    public void setMingcheng(String mingcheng) {
        this.mingcheng = mingcheng == null ? "" : mingcheng.trim();
    }

    public String getTupian() {
        return tupian;
    }
    public void setTupian(String tupian) {
        this.tupian = tupian == null ? "" : tupian.trim();
    }

    public String getLeixing() {
        return leixing;
    }
    public void setLeixing(String leixing) {
        this.leixing = leixing == null ? "" : leixing.trim();
    }

    public String getDanwei() {
        return danwei;
    }
    public void setDanwei(String danwei) {
        this.danwei = danwei == null ? "" : danwei.trim();
    }

    public String getWuzitigongfang() {
        return wuzitigongfang;
    }
    public void setWuzitigongfang(String wuzitigongfang) {
        this.wuzitigongfang = wuzitigongfang == null ? "" : wuzitigongfang.trim();
    }

    public Integer getKucun() {
        return kucun;
    }
    public void setKucun(Integer kucun) {
        this.kucun = kucun == null ? 0 : kucun;
    }

    public String getMiaoshu() {
        return miaoshu;
    }
    public void setMiaoshu(String miaoshu) {
        this.miaoshu = miaoshu == null ? "" : miaoshu.trim();
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
