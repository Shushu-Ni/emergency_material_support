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
            编辑物资提供方:
        </div>
        <div class="panel-body">
            <form action="wuzitigongfangupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">名称<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入名称" style="width:250px;" data-rule-required="true" data-msg-required="请填写名称" remote="checkno.do?checktype=update&id=${mmm.id}&table=wuzitigongfang&col=mingcheng" data-msg-remote="内容重复了" id="mingcheng" name="mingcheng" value="${Info.html(mmm.mingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">负责人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入负责人" style="width:150px;" id="fuzeren" name="fuzeren" value="${Info.html(mmm.fuzeren)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">联系方式</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入联系方式" style="width:150px;" id="lianxifangshi" name="lianxifangshi" value="${Info.html(mmm.lianxifangshi)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">邮箱</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入邮箱" style="width:150px;" email="true" data-msg-email="请输入有效邮件地址" id="youxiang" name="youxiang" value="${Info.html(mmm.youxiang)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">地址</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入地址" style="width:250px;" id="dizhi" name="dizhi" value="${Info.html(mmm.dizhi)}"/>                                            
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
