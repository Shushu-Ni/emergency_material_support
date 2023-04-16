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
            入库        </span>
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
    
                            <select class="form-control class_leixing47" data-value="${param.leixing}" id="leixing" name="leixing">
<option value="">请选择</option><ssm:sql var="select" type="select">SELECT * FROM wuzileibie ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.leibiemingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_leixing47").val($(".class_leixing47").attr("data-value"))</script>
                        
</div>
                                                                                    <div class="form-group">
    入库类型
    
                            <select class="form-control class_rukuleixing48" data-value="${param.rukuleixing}" id="rukuleixing" name="rukuleixing">
<option value="">请选择</option><option value="捐赠">捐赠</option>
<option value="下拨">下拨</option>
<option value="采购">采购</option>
<option value="其他">其他</option>

</select>
<script>
$(".class_rukuleixing48").val($(".class_rukuleixing48").attr("data-value"))</script>
                        
</div>
                                                                                                                                                                                                            <div class="form-group">
    入库人
    
                            <input type="text" class="form-control" style="" name="rukuren" value="${param.rukuren}"/>                        
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
                        <th> 名称  </th>
<th> 类型  </th>
<th> 单号  </th>
<th> 入库类型  </th>
<th> 入库数量  </th>
<th> 入库时间  </th>
<th> 物资提供方  </th>
<th> 操作人员  </th>
<th> 联系方式  </th>
<th> 具体位置  </th>
<th> 备注  </th>
<th> 入库人  </th>
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
                        <td> ${map.mingcheng} </td>
<td> <ssm:sql var="mapwuzileibie34" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie34.leibiemingcheng} </td>
<td> ${map.danhao} </td>
<td> ${map.rukuleixing} </td>
<td> ${map.rukushuliang} </td>
<td> ${map.rukushijian} </td>
<td> <ssm:sql var="mapwuzitigongfang35" type="find">SELECT mingcheng FROM wuzitigongfang where id='${map.wuzitigongfang}'</ssm:sql>${mapwuzitigongfang35.mingcheng} </td>
<td> ${map.caozuorenyuan} </td>
<td> ${map.lianxifangshi} </td>
<td> ${map.jutiweizhi} </td>
<td> ${map.beizhu} </td>
<td> ${map.rukuren} </td>
                                                                        <td align="center">${Info.subStr(map.addtime, 19, "")}</td>
                        <td align="center">

                            
                                                        
                            
                                                                <a href="ruku_detail.do?id=${map.id}">详情</a>
                                                                <a href="ruku_updt.do?id=${map.id}">编辑</a>
                                                                <a href="ruku_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
