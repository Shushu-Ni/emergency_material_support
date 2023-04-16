<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<script src="js/datepicker/WdatePicker.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加全国疫情:
        </div>
        <div class="panel-body">
            <form action="quanguoyiqinginsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">地区<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入地区" style="width:250px;" data-rule-required="true" data-msg-required="请填写地区" id="diqu" name="diqu" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">上报日期</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})" style="width:120px;" readonly="readonly" id="shangbaoriqi" name="shangbaoriqi" value="${Info.date("yyyy-MM-dd")}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">新增</label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入新增" style="width:150px;" number="true" data-msg-number="输入一个有效数字" id="xinzeng" name="xinzeng" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">现有</label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入现有" style="width:150px;" number="true" data-msg-number="输入一个有效数字" id="xianyou" name="xianyou" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">累计</label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入累计" style="width:150px;" number="true" data-msg-number="输入一个有效数字" id="leiji" name="leiji" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">治愈</label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入治愈" style="width:150px;" number="true" data-msg-number="输入一个有效数字" id="zhiyu" name="zhiyu" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">死亡</label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入死亡" style="width:150px;" number="true" data-msg-number="输入一个有效数字" id="siwang" name="siwang" value=""/>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                        
                                                                                                                
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
