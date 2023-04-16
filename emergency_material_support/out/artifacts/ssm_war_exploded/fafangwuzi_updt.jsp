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
            编辑发放物资:
        </div>
        <div class="panel-body">
            <form action="fafangwuziupdate.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
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
            
                                                    <ssm:sql var="mapwuzileibie33" type="find">SELECT leibiemingcheng FROM wuzileibie where id='${mmm.leixing}'</ssm:sql>${mapwuzileibie33.leibiemingcheng}<input type="hidden" id="leixing" name="leixing" value="${Info.html(mmm.leixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请类型</label>
        <div class="col-sm-10">
            
                                                    ${mmm.shenqingleixing}<input type="hidden" id="shenqingleixing" name="shenqingleixing" value="${Info.html(mmm.shenqingleixing)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请数量</label>
        <div class="col-sm-10">
            
                                                    ${mmm.shenqingshuliang}<input type="hidden" id="shenqingshuliang" name="shenqingshuliang" value="${Info.html(mmm.shenqingshuliang)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">姓名</label>
        <div class="col-sm-10">
            
                                                    ${mmm.xingming}<input type="hidden" id="xingming" name="xingming" value="${Info.html(mmm.xingming)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">联系电话</label>
        <div class="col-sm-10">
            
                                                    ${mmm.lianxidianhua}<input type="hidden" id="lianxidianhua" name="lianxidianhua" value="${Info.html(mmm.lianxidianhua)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">地址</label>
        <div class="col-sm-10">
            
                                                    ${mmm.dizhi}<input type="hidden" id="dizhi" name="dizhi" value="${Info.html(mmm.dizhi)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">申请人</label>
        <div class="col-sm-10">
            
                                                    ${mmm.shenqingren}<input type="hidden" id="shenqingren" name="shenqingren" value="${Info.html(mmm.shenqingren)}"/>                                            
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
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">发放时间</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',lang:'zh-cn'})" style="width:200px;" id="fafangshijian" name="fafangshijian" readonly="readonly" value="${Info.html(mmm.fafangshijian)}"/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">发放备注</label>
        <div class="col-sm-10">
            
                                                    <textarea style="width: 80%;height: 120px" class="form-control" placeholder="输入发放备注" id="fafangbeizhu" name="fafangbeizhu">${Info.html(mmm.fafangbeizhu)}</textarea>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">发放人</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入发放人" style="width:150px;" readonly="readonly" id="fafangren" name="fafangren" value="${mmm.fafangren}"/>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">
            
                                            <input name="id" value="${mmm.id}" type="hidden"/>
                                                <input name="shenqingwuziid" value="${mmm.shenqingwuziid}" type="hidden"/>
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
