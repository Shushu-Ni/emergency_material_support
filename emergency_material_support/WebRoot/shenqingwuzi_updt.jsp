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
            编辑申请物资:
        </div>
        <div class="panel-body">
            <form action="shenqingwuziupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">编号</label>
        <div class="col-sm-10">
            
                                                    ${mmm.bianhao}<input type="hidden" id="bianhao" name="bianhao" value="${Info.html(mmm.bianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">名称</label>
        <div class="col-sm-10">
            
                                                    ${mmm.mingcheng}<input type="hidden" id="mingcheng" name="mingcheng" value="${Info.html(mmm.mingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">类型</label>
        <div class="col-sm-10">
            
                                                    <ssm:sql var="mapwuzileibie20" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${mmm.leixing}'</ssm:sql>${mapwuzileibie20.leibiemingcheng}<input type="hidden" id="leixing" name="leixing" value="${Info.html(mmm.leixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请类型</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_shenqingleixing31" data-value="${Info.html(mmm.shenqingleixing)}" id="shenqingleixing" name="shenqingleixing" style="width:250px">
<option value="个人">个人</option>
<option value="小区">小区</option>

</select>
<script>
$(".class_shenqingleixing31").val($(".class_shenqingleixing31").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请数量</label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入申请数量" style="width:150px;" number="true" data-msg-number="输入一个有效数字" min="0" max="${readMap.kucun}" id="shenqingshuliang" name="shenqingshuliang" value="${Info.html(mmm.shenqingshuliang)}"/>                                            
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
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">联系电话</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入联系电话" style="width:150px;" id="lianxidianhua" name="lianxidianhua" value="${Info.html(mmm.lianxidianhua)}"/>                                            
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
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请描述</label>
        <div class="col-sm-10">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" placeholder="输入申请描述" id="shenqingmiaoshu" name="shenqingmiaoshu">${Info.html(mmm.shenqingmiaoshu)}</textarea>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入申请人" style="width:150px;" readonly="readonly" id="shenqingren" name="shenqingren" value="${mmm.shenqingren}"/>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                            <input name="id" value="${mmm.id}" type="hidden"/>
                                                <input name="wuzixinxiid" value="${mmm.wuzixinxiid}" type="hidden"/>
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
