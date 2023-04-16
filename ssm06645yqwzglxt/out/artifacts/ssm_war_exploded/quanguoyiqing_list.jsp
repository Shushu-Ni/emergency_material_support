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
            全国疫情        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
</div>
                                
                                                            <div class="form-group">
    地区
    
                            <input type="text" class="form-control" style="" name="diqu" value="${param.diqu}"/>                        
</div>
                                                                                                                                                            <select class="form-control" name="order" id="orderby">

                    <option value="id">按发布时间</option>
                                                <option value="shangbaoriqi">
                                按上报日期                            </option>
                                        
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
                        <th> 地区  </th>
<th> 上报日期  </th>
<th> 新增  </th>
<th> 现有  </th>
<th> 累计  </th>
<th> 治愈  </th>
<th> 死亡  </th>
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
                        <td> ${map.diqu} </td>
<td> ${map.shangbaoriqi} </td>
<td> ${map.xinzeng} </td>
<td> ${map.xianyou} </td>
<td> ${map.leiji} </td>
<td> ${map.zhiyu} </td>
<td> ${map.siwang} </td>
                                                                        <td align="center">${Info.subStr(map.addtime, 19, "")}</td>
                        <td align="center">

                            
                                                        
                            
                                                                <a href="quanguoyiqing_updt.do?id=${map.id}">编辑</a>
                                                                <a href="quanguoyiqing_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
