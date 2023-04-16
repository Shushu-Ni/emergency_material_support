package com.spring.entity;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

@Table(name = "quanguoyiqing")
public class Quanguoyiqing implements Serializable {
    @GeneratedValue(generator = "JDBC") // 自增的主键映射
    @Id
    @Column(name = "id",insertable=false)
    private Integer id;

    @Column(name = "diqu")
    private String diqu;
    @Column(name = "shangbaoriqi")
    private String shangbaoriqi;
    @Column(name = "xinzeng")
    private Integer xinzeng;
    @Column(name = "xianyou")
    private Integer xianyou;
    @Column(name = "leiji")
    private Integer leiji;
    @Column(name = "zhiyu")
    private Integer zhiyu;
    @Column(name = "siwang")
    private Integer siwang;

    @Column(name = "addtime")
    private String addtime;

    private static final long serialVersionUID = 1L;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }



    public String getDiqu() {
        return diqu;
    }
    public void setDiqu(String diqu) {
        this.diqu = diqu == null ? "" : diqu.trim();
    }

    public String getShangbaoriqi() {
        return shangbaoriqi;
    }
    public void setShangbaoriqi(String shangbaoriqi) {
        this.shangbaoriqi = shangbaoriqi == null ? "" : shangbaoriqi.trim();
    }

    public Integer getXinzeng() {
        return xinzeng;
    }
    public void setXinzeng(Integer xinzeng) {
        this.xinzeng = xinzeng == null ? 0 : xinzeng;
    }

    public Integer getXianyou() {
        return xianyou;
    }
    public void setXianyou(Integer xianyou) {
        this.xianyou = xianyou == null ? 0 : xianyou;
    }

    public Integer getLeiji() {
        return leiji;
    }
    public void setLeiji(Integer leiji) {
        this.leiji = leiji == null ? 0 : leiji;
    }

    public Integer getZhiyu() {
        return zhiyu;
    }
    public void setZhiyu(Integer zhiyu) {
        this.zhiyu = zhiyu == null ? 0 : zhiyu;
    }

    public Integer getSiwang() {
        return siwang;
    }
    public void setSiwang(Integer siwang) {
        this.siwang = siwang == null ? 0 : siwang;
    }

    public String getAddtime() {
        return addtime;
    }

    public void setAddtime(String addtime) {
        this.addtime = addtime;
    }
}
