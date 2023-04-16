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
            留言板        </span>
        <span>列表</span>
    </div>
    <div class="panel-body">
        <div class="pa10 bg-warning">
            <form class="form-inline" id="formSearch" action="?"><!-- form 标签开始 -->
    
                <div class="form-group">
    
    
                    <i class="glyphicon glyphicon-search"></i>
                
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
                        <th> 姓名  </th>
<th> 联系电话  </th>
<th> 留言内容  </th>
<th> 留言人  </th>
<th> 回复内容  </th>
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
                        <td> ${map.xingming} </td>
<td> ${map.lianxidianhua} </td>
<td> ${map.liuyanneirong} </td>
<td> ${map.liuyanren} </td>
<td> ${map.huifuneirong} </td>
                                                                        <td align="center">${Info.subStr(map.addtime, 19, "")}</td>
                        <td align="center">

                            
                                                        
                            

                                                                <a href="liuyanban_delete.do?id=${map.id}" onclick="return confirm('确定要删除？')">删除</a>
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
