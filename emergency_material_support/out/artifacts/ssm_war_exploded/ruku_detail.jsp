<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">





<div class="panel panel-default">
    <div class="panel-heading">
        入库详情
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
            </div><div class="detail detail-text">
                <div class="detail-title">
                    单号：
                </div>
                <div class="detail-content">
                    ${map.danhao}
                </div>
            </div><div class="detail detail-text">
                <div class="detail-title">
                    操作人员：
                </div>
                <div class="detail-content">
                    ${map.caozuorenyuan}
                </div>
            </div><div class="detail detail-text">
                <div class="detail-title">
                    联系方式：
                </div>
                <div class="detail-content">
                    ${map.lianxifangshi}
                </div>
            </div>                            <div class="detail detail-longtext">
                <div class="detail-title">
                    名称：
                </div>
                <div class="detail-content">
                    ${map.mingcheng}
                </div>
            </div><div class="detail detail-longtext">
                <div class="detail-title">
                    具体位置：
                </div>
                <div class="detail-content">
                    ${map.jutiweizhi}
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    类型：
                </div>
                <div class="detail-content">
                    <ssm:sql var="mapwuzileibie38" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie38.leibiemingcheng}
                </div>
            </div><div class="detail detail-select">
                <div class="detail-title">
                    入库类型：
                </div>
                <div class="detail-content">
                    ${map.rukuleixing}
                </div>
            </div><div class="detail detail-select">
                <div class="detail-title">
                    物资提供方：
                </div>
                <div class="detail-content">
                    <ssm:sql var="mapwuzitigongfang39" type="find">SELECT mingcheng FROM wuzitigongfang where id='${map.wuzitigongfang}'</ssm:sql>${mapwuzitigongfang39.mingcheng}
                </div>
            </div>                            <div class="detail detail-number">
                <div class="detail-title">
                    入库数量：
                </div>
                <div class="detail-content">
                    ${map.rukushuliang}
                </div>
            </div>                            <div class="detail detail-datetime">
                <div class="detail-title">
                    入库时间：
                </div>
                <div class="detail-content">
                    ${map.rukushijian}
                </div>
            </div>                            <div class="detail detail-textarea">
                <div class="detail-title">
                    备注：
                </div>
                <div class="detail-content">
                    ${map.beizhu}
                </div>
            </div>                            <div class="detail detail-textuser">
                <div class="detail-title">
                    入库人：
                </div>
                <div class="detail-content">
                    ${map.rukuren}
                </div>
            </div>            
                                                                    </div>

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
