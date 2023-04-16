<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">


    <div class="panel panel-default">
        <div class="panel-heading">
        <span class="module-name">
            物资信息        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>

                    <div class="form-group">
                        编号

                        <input type="text" class="form-control" style="" name="bianhao" value="${param.bianhao}"/>
                    </div>
                    <div class="form-group">
                        名称

                        <input type="text" class="form-control" style="" name="mingcheng" value="${param.mingcheng}"/>
                    </div>
                    <div class="form-group">
                        类型

                        <select class="form-control class_leixing18" data-value="${param.leixing}" id="leixing"
                                name="leixing">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM wuzileibie ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.leibiemingcheng}</option>
                            </c:forEach>

                        </select>
                        <script>
                            $(".class_leixing18").val($(".class_leixing18").attr("data-value"))</script>

                    </div>
                    <div class="form-group">
                        描述


                    </div>
                    <select class="form-control" name="order" id="orderby">

                        <option value="id">按发布时间</option>

                    </select>
                    <select class="form-control" name="sort" id="sort">

                        <option value="desc">倒序</option>
                        <option value="asc">升序</option>

                    </select>
                    <script>$("#orderby").val("${orderby}");
                    $("#sort").val("${sort}");</script>
                    <button type="submit" class="btn btn-default">
                        搜索
                    </button>


                    <!--form标签结束--></form>
            </div>


            <div class="list-table">
                <table width="100%" border="1" class="table table-list table-bordered table-hover">
                    <thead>
                    <tr align="center">
                        <th width="60" data-field="item">序号</th>
                        <th> 名称</th>
                        <th> 图片</th>
                        <th> 类型</th>
                        <th> 单位</th>
                        <th> 物资提供方</th>
                        <th> 库存</th>
                        <th width="190" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0"/><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}"/>
                        <tr id="${map.id}" pid="">
                            <td width="30" align="center">
                                <label>
                                        ${i}
                                </label>
                            </td>
                            <td> ${map.mingcheng} </td>
                            <td><c:choose>
                                <c:when test="${'' == map.tupian }">
                                    -</c:when><c:otherwise><img width="100"
                                                                src="${map.tupian}"/></c:otherwise></c:choose></td>
                            <td><ssm:sql var="mapwuzileibie8"
                                         type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie8.leibiemingcheng} </td>
                            <td> ${map.danwei} </td>
                            <td><ssm:sql var="mapwuzitigongfang9"
                                         type="find">SELECT mingcheng FROM wuzitigongfang where id='${map.wuzitigongfang}'</ssm:sql>${mapwuzitigongfang9.mingcheng} </td>
                            <td> ${map.kucun} </td>
                            <td align="center">${Info.subStr(map.addtime, 19, "")}</td>
                            <td align="center">


                                <a href="ruku_add.do?id=${map.id}">入库</a>
                                <a href="wuzixinxi_detail.do?id=${map.id}">详情</a>
                                <c:choose>
                                    <c:when test="${'管理员' == sessionScope.cx }">
                                        <a href="wuzixinxi_updt.do?id=${map.id}">编辑</a>
                                        <a href="wuzixinxi_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>

                                    </c:when></c:choose>

                                <!--qiatnalijne-->
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            ${page.info}
        </div>


    </div>


</div>
<%@ include file="foot.jsp" %>
