package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "shenqingwuzi")
public class Shenqingwuzi implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "bianhao")
    private String bianhao;
    @Column(name = "mingcheng")
    private String mingcheng;
    @Column(name = "leixing")
    private String leixing;
    @Column(name = "shenqingleixing")
    private String shenqingleixing;
    @Column(name = "shenqingshuliang")
    private Integer shenqingshuliang;
    @Column(name = "xingming")
    private String xingming;
    @Column(name = "lianxidianhua")
    private String lianxidianhua;
    @Column(name = "dizhi")
    private String dizhi;
    @Column(name = "zhuangtai")
    private String zhuangtai;
    @Column(name = "shenqingmiaoshu")
    private String shenqingmiaoshu;
    @Column(name = "shenqingren")
    private String shenqingren;
    private Integer wuzixinxiid;

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

    public String getLeixing() {
        return leixing;
    }
    public void setLeixing(String leixing) {
        this.leixing = leixing == null ? "" : leixing.trim();
    }

    public String getShenqingleixing() {
        return shenqingleixing;
    }
    public void setShenqingleixing(String shenqingleixing) {
        this.shenqingleixing = shenqingleixing == null ? "" : shenqingleixing.trim();
    }

    public Integer getShenqingshuliang() {
        return shenqingshuliang;
    }
    public void setShenqingshuliang(Integer shenqingshuliang) {
        this.shenqingshuliang = shenqingshuliang == null ? 0 : shenqingshuliang;
    }

    public String getXingming() {
        return xingming;
    }
    public void setXingming(String xingming) {
        this.xingming = xingming == null ? "" : xingming.trim();
    }

    public String getLianxidianhua() {
        return lianxidianhua;
    }
    public void setLianxidianhua(String lianxidianhua) {
        this.lianxidianhua = lianxidianhua == null ? "" : lianxidianhua.trim();
    }

    public String getDizhi() {
        return dizhi;
    }
    public void setDizhi(String dizhi) {
        this.dizhi = dizhi == null ? "" : dizhi.trim();
    }

    public String getZhuangtai() {
        return zhuangtai;
    }
    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai == null ? "" : zhuangtai.trim();
    }

    public String getShenqingmiaoshu() {
        return shenqingmiaoshu;
    }
    public void setShenqingmiaoshu(String shenqingmiaoshu) {
        this.shenqingmiaoshu = shenqingmiaoshu == null ? "" : shenqingmiaoshu.trim();
    }

    public String getShenqingren() {
        return shenqingren;
    }
    public void setShenqingren(String shenqingren) {
        this.shenqingren = shenqingren == null ? "" : shenqingren.trim();
    }
    public Integer getWuzixinxiid() {
        return wuzixinxiid;
    }
    public void setWuzixinxiid(Integer wuzixinxiid) {
        this.wuzixinxiid = wuzixinxiid == null ? 0 : wuzixinxiid;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
