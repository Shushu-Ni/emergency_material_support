<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="head.jsp" %>
<script src="js/jquery.validate.js"></script>
<link rel="stylesheet" href="js/layer/theme/default/layer.css"/>
<script src="js/layer/layer.js"></script>
<link rel="stylesheet" href="js/umeditor/themes/default/css/umeditor.css"/>
<script src="js/umeditor/umeditor.config.js"></script>
<script src="js/umeditor/umeditor.min.js"></script>

<div style="padding: 10px">




<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            编辑物资信息:
        </div>
        <div class="panel-body">
            <form action="wuzixinxiupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">编号</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入编号" style="width:150px;" readonly="readonly" id="bianhao" name="bianhao" value="${Info.html(mmm.bianhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">名称</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入名称" style="width:250px;" id="mingcheng" name="mingcheng" value="${Info.html(mmm.mingcheng)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">图片</label>
        <div class="col-sm-10">
            
                                                    <div class="input-group" style="width:250px">
    <input type="text" class="form-control" id="tupian" name="tupian" value="${Info.html(mmm.tupian)}"/>

    <span class="input-group-btn"><button type="button" class="btn btn-default" onclick="layer.open({type:2,title:'上传图片',fixed:true,shadeClose:true,shade:0.5,area:['320px','150px'],content:'upload.html?result=tupian'})">
    上传图片
</button></span>
</div>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">类型</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_leixing23" data-value="${Info.html(mmm.leixing)}" id="leixing" name="leixing" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM wuzileibie ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.leibiemingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_leixing23").val($(".class_leixing23").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">单位</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_danwei24" data-value="${Info.html(mmm.danwei)}" id="danwei" name="danwei" style="width:250px">
<option value="包">包</option>
<option value="件">件</option>
<option value="箱">箱</option>

</select>
<script>
$(".class_danwei24").val($(".class_danwei24").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">物资提供方</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_wuzitigongfang25" data-value="${Info.html(mmm.wuzitigongfang)}" id="wuzitigongfang" name="wuzitigongfang" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM wuzitigongfang ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.mingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_wuzitigongfang25").val($(".class_wuzitigongfang25").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">库存<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入库存" style="width:150px;" data-rule-required="true" data-msg-required="请填写库存" number="true" data-msg-number="输入一个有效数字" min="1" id="kucun" name="kucun" value="${Info.html(mmm.kucun)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">描述</label>
        <div class="col-sm-10">
            
                                                    <textarea id="miaoshu" name="miaoshu" style="max-width: 750px;width:100%; height: 300px;">${Info.html(mmm.miaoshu)}</textarea><script>
            (function(){
                var um = UM.getEditor('miaoshu');
            })();
            </script>                                            
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
