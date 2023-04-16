<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">





<div class="panel panel-default">
    <div class="panel-heading">
        物资信息详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-text">
                <div class="detail-title">
                    编号：
                </div>
                <div class="detail-content">
                    ${map.bianhao}
                </div>
            </div>                            <div class="detail detail-longtext">
                <div class="detail-title">
                    名称：
                </div>
                <div class="detail-content">
                    ${map.mingcheng}
                </div>
            </div>                            <div class="detail detail-image">
                <div class="detail-title">
                    图片：
                </div>
                <div class="detail-content">
                    <img src="${map.tupian}" style="width: 350px"/>
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    类型：
                </div>
                <div class="detail-content">
                    <ssm:sql var="mapwuzileibie11" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie11.leibiemingcheng}
                </div>
            </div><div class="detail detail-select">
                <div class="detail-title">
                    单位：
                </div>
                <div class="detail-content">
                    ${map.danwei}
                </div>
            </div><div class="detail detail-select">
                <div class="detail-title">
                    物资提供方：
                </div>
                <div class="detail-content">
                    <ssm:sql var="mapwuzitigongfang12" type="find">SELECT mingcheng FROM wuzitigongfang where id='${map.wuzitigongfang}'</ssm:sql>${mapwuzitigongfang12.mingcheng}
                </div>
            </div>                            <div class="detail detail-number">
                <div class="detail-title">
                    库存：
                </div>
                <div class="detail-content">
                    ${map.kucun}
                </div>
            </div>                                        
                                                            <div class="detail detail-editor">
                <div class="detail-title">
                    描述：
                </div>
                <div class="detail-content">
                    ${map.miaoshu}
                </div>
            </div>        </div>

        <div class="button-list mt10">
            <div class="">
                <button type="button" class="btn btn-default" onclick="history.go(-1);">
    返回
                
</button>
                <button type="button" class="btn btn-default" onclick="window.print()">
    打印本页
                
</button>
            </div>
        </div>

    </div>
</div>







</div>
<%@ include file="foot.jsp" %>
