<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">





<div class="panel panel-default">
    <div class="panel-heading">
        新闻信息详情
    </div>
    <div class="panel-body">

        <div class="admin-detail clearfix">
                            <div class="detail detail-longtext">
                <div class="detail-title">
                    标题：
                </div>
                <div class="detail-content">
                    ${map.biaoti}
                </div>
            </div>                            <div class="detail detail-select">
                <div class="detail-title">
                    分类：
                </div>
                <div class="detail-content">
                    <ssm:sql var="mapxinwenfenlei6" type="find">SELECT fenleimingcheng FROM xinwenfenlei where id='${map.fenlei}'</ssm:sql>${mapxinwenfenlei6.fenleimingcheng}
                </div>
            </div>                            <div class="detail detail-image">
                <div class="detail-title">
                    图片：
                </div>
                <div class="detail-content">
                    <img src="${map.tupian}" style="width: 350px"/>
                </div>
            </div>                            <div class="detail detail-textuser">
                <div class="detail-title">
                    添加人：
                </div>
                <div class="detail-content">
                    ${map.tianjiaren}
                </div>
            </div>                            <div class="detail detail-number">
                <div class="detail-title">
                    点击率：
                </div>
                <div class="detail-content">
                    ${map.dianjilv}
                </div>
            </div>                                        
                                                            <div class="detail detail-editor">
                <div class="detail-title">
                    内容：
                </div>
                <div class="detail-content">
                    ${map.neirong}
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
