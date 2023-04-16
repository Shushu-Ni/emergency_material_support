package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "ruku")
public class Ruku implements Serializable {
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
    @Column(name = "danhao")
    private String danhao;
    @Column(name = "rukuleixing")
    private String rukuleixing;
    @Column(name = "rukushuliang")
    private Integer rukushuliang;
    @Column(name = "rukushijian")
    private String rukushijian;
    @Column(name = "wuzitigongfang")
    private String wuzitigongfang;
    @Column(name = "caozuorenyuan")
    private String caozuorenyuan;
    @Column(name = "lianxifangshi")
    private String lianxifangshi;
    @Column(name = "jutiweizhi")
    private String jutiweizhi;
    @Column(name = "beizhu")
    private String beizhu;
    @Column(name = "rukuren")
    private String rukuren;
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

    public String getDanhao() {
        return danhao;
    }
    public void setDanhao(String danhao) {
        this.danhao = danhao == null ? "" : danhao.trim();
    }

    public String getRukuleixing() {
        return rukuleixing;
    }
    public void setRukuleixing(String rukuleixing) {
        this.rukuleixing = rukuleixing == null ? "" : rukuleixing.trim();
    }

    public Integer getRukushuliang() {
        return rukushuliang;
    }
    public void setRukushuliang(Integer rukushuliang) {
        this.rukushuliang = rukushuliang == null ? 0 : rukushuliang;
    }

    public String getRukushijian() {
        return rukushijian;
    }
    public void setRukushijian(String rukushijian) {
        this.rukushijian = rukushijian == null ? "" : rukushijian.trim();
    }

    public String getWuzitigongfang() {
        return wuzitigongfang;
    }
    public void setWuzitigongfang(String wuzitigongfang) {
        this.wuzitigongfang = wuzitigongfang == null ? "" : wuzitigongfang.trim();
    }

    public String getCaozuorenyuan() {
        return caozuorenyuan;
    }
    public void setCaozuorenyuan(String caozuorenyuan) {
        this.caozuorenyuan = caozuorenyuan == null ? "" : caozuorenyuan.trim();
    }

    public String getLianxifangshi() {
        return lianxifangshi;
    }
    public void setLianxifangshi(String lianxifangshi) {
        this.lianxifangshi = lianxifangshi == null ? "" : lianxifangshi.trim();
    }

    public String getJutiweizhi() {
        return jutiweizhi;
    }
    public void setJutiweizhi(String jutiweizhi) {
        this.jutiweizhi = jutiweizhi == null ? "" : jutiweizhi.trim();
    }

    public String getBeizhu() {
        return beizhu;
    }
    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu == null ? "" : beizhu.trim();
    }

    public String getRukuren() {
        return rukuren;
    }
    public void setRukuren(String rukuren) {
        this.rukuren = rukuren == null ? "" : rukuren.trim();
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
