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
            编辑入库:
        </div>
        <div class="panel-body">
            <form action="rukuupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
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
            
                                                    <ssm:sql var="mapwuzileibie41" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${mmm.leixing}'</ssm:sql>${mapwuzileibie41.leibiemingcheng}<input type="hidden" id="leixing" name="leixing" value="${Info.html(mmm.leixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">单号</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入单号" style="width:150px;" readonly="readonly" id="danhao" name="danhao" value="${Info.html(mmm.danhao)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">入库类型</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_rukuleixing53" data-value="${Info.html(mmm.rukuleixing)}" id="rukuleixing" name="rukuleixing" style="width:250px">
<option value="捐赠">捐赠</option>
<option value="下拨">下拨</option>
<option value="采购">采购</option>
<option value="其他">其他</option>

</select>
<script>
$(".class_rukuleixing53").val($(".class_rukuleixing53").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">入库数量<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="number" class="form-control" placeholder="输入入库数量" style="width:150px;" data-rule-required="true" data-msg-required="请填写入库数量" number="true" data-msg-number="输入一个有效数字" id="rukushuliang" name="rukushuliang" value="${Info.html(mmm.rukushuliang)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">入库时间<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})" style="width:200px;" data-rule-required="true" data-msg-required="请填写入库时间" id="rukushijian" name="rukushijian" readonly="readonly" value="${Info.html(mmm.rukushijian)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">物资提供方</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_wuzitigongfang54" data-value="${Info.html(mmm.wuzitigongfang)}" id="wuzitigongfang" name="wuzitigongfang" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM wuzitigongfang ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.mingcheng}</option>
</c:forEach>

</select>
<script>
$(".class_wuzitigongfang54").val($(".class_wuzitigongfang54").attr("data-value"))</script>
                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">操作人员</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入操作人员" style="width:150px;" id="caozuorenyuan" name="caozuorenyuan" value="${Info.html(mmm.caozuorenyuan)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">联系方式</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入联系方式" style="width:150px;" phone="true" data-msg-phone="请输入正确手机号码" id="lianxifangshi" name="lianxifangshi" value="${Info.html(mmm.lianxifangshi)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">具体位置</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入具体位置" style="width:250px;" id="jutiweizhi" name="jutiweizhi" value="${Info.html(mmm.jutiweizhi)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">备注</label>
        <div class="col-sm-10">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" placeholder="输入备注" id="beizhu" name="beizhu">${Info.html(mmm.beizhu)}</textarea>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">入库人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入入库人" style="width:150px;" readonly="readonly" id="rukuren" name="rukuren" value="${mmm.rukuren}"/>                                            
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
