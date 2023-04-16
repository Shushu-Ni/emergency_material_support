<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>

<div style="padding: 10px">




<div class="panel panel-default">
    <div class="panel-heading">
        <span class="module-name">
            用户        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                
                                                            <div class="form-group">
    用户名
    
                            <input type="text" class="form-control" style="" name="yonghuming" value="${param.yonghuming}"/>                        
</div>
                                                                                    <div class="form-group">
    姓名
    
                            <input type="text" class="form-control" style="" name="xingming" value="${param.xingming}"/>                        
</div>
                                                                                                                                                                    <div class="form-group">
    部门
    
                            <select class="form-control class_bumen5" data-value="${param.bumen}" data-rule-required="true" data-msg-required="请填写部门" id="bumen" name="bumen">
<option value="">请选择</option><ssm:sql var="select" type="select">SELECT * FROM bumen ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.bumenmingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_bumen5").val($(".class_bumen5").attr("data-value"))</script>
                        
</div>
                                    <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                    
</select>
                <select class="form-control" name="sort" id="sort">

                    <option value="desc">倒序</option>
                    <option value="asc">升序</option>
                
</select>
                <script>$("#orderby").val("${orderby}");$("#sort").val("${sort}");</script>
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
                        <th> 用户名  </th>
<th> 密码  </th>
<th> 姓名  </th>
<th> 性别  </th>
<th> 手机  </th>
<th> 邮箱  </th>
<th> 身份证  </th>
<th> 地址  </th>
<th> 部门  </th>
                                                                        <th width="190" data-field="addtime">添加时间</th>
                        <th width="220" data-field="handler">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="i" value="0" /><c:forEach items="${list}" var="map"><c:set var="i" value="${i+1}" />
                    <tr id="${map.id}" pid="">
                        <td width="30" align="center">
                            <label>
                                                                ${i}
                            </label>
                        </td>
                        <td> ${map.yonghuming} </td>
<td> ${map.mima} </td>
<td> ${map.xingming} </td>
<td> ${map.xingbie} </td>
<td> ${map.shouji} </td>
<td> ${map.youxiang} </td>
<td> ${map.shenfenzheng} </td>
<td> ${map.dizhi} </td>
<td> <ssm:sql var="mapbumen1" type="find">SELECT bumenmingcheng FROM bumen where id='${map.bumen}'</ssm:sql>${mapbumen1.bumenmingcheng} </td>
                                                                        <td align="center">${Info.subStr(map.addtime, 19, "")}</td>
                        <td align="center">

                            
                                                        
                            
                                                                <a href="yonghu_updt.do?id=${map.id}">编辑</a>
                                                                <a href="yonghu_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
