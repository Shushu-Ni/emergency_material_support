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
            审核        </span>
            <span>列表</span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->

                    <div class="form-group">


                        <i class="glyphicon glyphicon-search"></i>

                    </div>


                    <div class="form-group">
                        名称

                        <input type="text" class="form-control" style="" name="mingcheng" value="${param.mingcheng}"/>
                    </div>
                    <div class="form-group">
                        类型

                        <select class="form-control class_leixing37" data-value="${param.leixing}" id="leixing"
                                name="leixing">
                            <option value="">请选择</option>
                            <ssm:sql var="select" type="select">SELECT * FROM wuzileibie ORDER BY id desc</ssm:sql>
                            <c:forEach items="${select}" var="m">
                                <option value="${m.id}">${m.leibiemingcheng}</option>
                            </c:forEach>

                        </select>
                        <script>
                            $(".class_leixing37").val($(".class_leixing37").attr("data-value"))</script>

                    </div>
                    <div class="form-group">
                        申请类型

                        <select class="form-control class_shenqingleixing38" data-value="${param.shenqingleixing}"
                                id="shenqingleixing" name="shenqingleixing">
                            <option value="">请选择</option>
                            <option value="个人">个人</option>
                            <option value="小区">小区</option>

                        </select>
                        <script>
                            $(".class_shenqingleixing38").val($(".class_shenqingleixing38").attr("data-value"))</script>

                    </div>
                    <div class="form-group">
                        姓名

                        <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}"/>
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
                        <th> 类型</th>
                        <th> 申请类型</th>
                        <th> 申请数量</th>
                        <th> 姓名</th>
                        <th> 联系电话</th>
                        <th> 地址</th>
                        <th> 申请人</th>
                        <th> 审核</th>
                        <th> 审核描述</th>
                        <th> 审批人</th>
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
                            <td><ssm:sql var="mapwuzileibie24"
                                         type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie24.leibiemingcheng} </td>
                            <td> ${map.shenqingleixing} </td>
                            <td> ${map.shenqingshuliang} </td>
                            <td> ${map.xingming} </td>
                            <td> ${map.lianxidianhua} </td>
                            <td> ${map.dizhi} </td>
                            <td> ${map.shenqingren} </td>
                            <td> ${map.shenhe} </td>
                            <td> ${map.shenhemiaoshu} </td>
                            <td> ${map.shenpiren} </td>
                            <td align="center">${Info.subStr(map.addtime, 19, "")}</td>
                            <td align="center">


                                <a href="shenhe_detail.do?id=${map.id}">详情</a>
                                <a href="shenhe_updt.do?id=${map.id}">编辑</a>
                                <a href="shenhe_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
