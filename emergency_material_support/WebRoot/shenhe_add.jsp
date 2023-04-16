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
            添加审核:
        </div>
        <div class="panel-body">
            <form action="shenheinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">编号</label>
        <div class="col-sm-10">
            
                                                    ${readMap.bianhao}<input type="hidden" id="bianhao" name="bianhao" value="${Info.html(readMap.bianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">名称</label>
        <div class="col-sm-10">
            
                                                    ${readMap.mingcheng}<input type="hidden" id="mingcheng" name="mingcheng" value="${Info.html(readMap.mingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">类型</label>
        <div class="col-sm-10">
            
                                                    <ssm:sql var="mapwuzileibie26" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${readMap.leixing}'</ssm:sql>${mapwuzileibie26.leibiemingcheng}<input type="hidden" id="leixing" name="leixing" value="${Info.html(readMap.leixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请类型</label>
        <div class="col-sm-10">
            
                                                    ${readMap.shenqingleixing}<input type="hidden" id="shenqingleixing" name="shenqingleixing" value="${Info.html(readMap.shenqingleixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请数量</label>
        <div class="col-sm-10">
            
                                                    ${readMap.shenqingshuliang}<input type="hidden" id="shenqingshuliang" name="shenqingshuliang" value="${Info.html(readMap.shenqingshuliang)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
        <div class="col-sm-10">
            
                                                    ${readMap.xingming}<input type="hidden" id="xingming" name="xingming" value="${Info.html(readMap.xingming)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">联系电话</label>
        <div class="col-sm-10">
            
                                                    ${readMap.lianxidianhua}<input type="hidden" id="lianxidianhua" name="lianxidianhua" value="${Info.html(readMap.lianxidianhua)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">地址</label>
        <div class="col-sm-10">
            
                                                    ${readMap.dizhi}<input type="hidden" id="dizhi" name="dizhi" value="${Info.html(readMap.dizhi)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请人</label>
        <div class="col-sm-10">
            
                                                    ${readMap.shenqingren}<input type="hidden" id="shenqingren" name="shenqingren" value="${Info.html(readMap.shenqingren)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">审核</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_shenhe39" data-value="" id="shenhe" name="shenhe" style="width:250px">
<option value="通过">通过</option>
<option value="驳回">驳回</option>

</select>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">审核描述</label>
        <div class="col-sm-10">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" placeholder="输入审核描述" id="shenhemiaoshu" name="shenhemiaoshu"></textarea>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">审批人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入审批人" style="width:150px;" readonly="readonly" id="shenpiren" name="shenpiren" value="${sessionScope.username}"/>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                                                <input type="hidden" name="shenqingwuziid" value="${param.id}"/>
                        <input name="referer" value="<%=request.getHeader("referer")%>" type="hidden"/>
                    
                                                                                                                
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
