<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">





<div class="panel panel-default">
    <div class="panel-heading">
        审核详情
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
                    姓名：
                </div>
                <div class="detail-content">
                    ${map.xingming}
                </div>
            </div><div class="detail detail-text">
                <div class="detail-title">
                    联系电话：
                </div>
                <div class="detail-content">
                    ${map.lianxidianhua}
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
                    地址：
                </div>
                <div class="detail-content">
                    ${map.dizhi}
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    类型：
                </div>
                <div class="detail-content">
                    <ssm:sql var="mapwuzileibie25" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie25.leibiemingcheng}
                </div>
            </div><div class="detail detail-select">
                <div class="detail-title">
                    申请类型：
                </div>
                <div class="detail-content">
                    ${map.shenqingleixing}
                </div>
            </div><div class="detail detail-select">
                <div class="detail-title">
                    审核：
                </div>
                <div class="detail-content">
                    ${map.shenhe}
                </div>
            </div>                            <div class="detail detail-number">
                <div class="detail-title">
                    申请数量：
                </div>
                <div class="detail-content">
                    ${map.shenqingshuliang}
                </div>
            </div>                            <div class="detail detail-textuser">
                <div class="detail-title">
                    申请人：
                </div>
                <div class="detail-content">
                    ${map.shenqingren}
                </div>
            </div><div class="detail detail-textuser">
                <div class="detail-title">
                    审批人：
                </div>
                <div class="detail-content">
                    ${map.shenpiren}
                </div>
            </div>                            <div class="detail detail-textarea">
                <div class="detail-title">
                    审核描述：
                </div>
                <div class="detail-content">
                    ${map.shenhemiaoshu}
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
