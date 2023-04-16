<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑管理员:
        </div>
        <div class="panel-body">
            <form action="adminsupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">权限</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_cx4" data-value="${Info.html(mmm.cx)}" id="cx" name="cx" style="width:250px">
<option value="管理员">管理员</option>
<option value="物资管理部">物资管理部</option>

</select>
<script>
$(".class_cx4").val($(".class_cx4").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">帐号<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入帐号" style="width:150px;" data-rule-required="true" data-msg-required="请填写帐号" remote="checkno.do?checktype=update&id=${mmm.id}&table=admins&col=username" data-msg-remote="内容重复了" id="username" name="username" value="${Info.html(mmm.username)}"/>                                            
        </div>
        
    </div>
</div>
                                                                            <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入姓名" style="width:150px;" id="xingming" name="xingming" value="${Info.html(mmm.xingming)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">联系电话<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入联系电话" style="width:150px;" data-rule-required="true" data-msg-required="请填写联系电话" id="lianxidianhua" name="lianxidianhua" value="${Info.html(mmm.lianxidianhua)}"/>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                            <input name="id" value="${mmm.id}" type="hidden"/>
                                                <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                        <input name="updtself" value="${updtself}" type="hidden"/>
                                        
                    
                    <button type="submit" class="btn btn-primary" name="Submit">
    提交
</button>
                    <button type="reset" class="btn btn-default" name="Submit2">
    重置
</button>

                
        </div>
        
    </div>
</div>
            
<!--form标签结束--></form>
        </div>
    </div>

<!-- container定宽，并剧中结束 --></div>





<script>
    $(function () {
        $('#form1').validate();
    });
</script>



</div>
<%@ include file="foot.jsp" %>
