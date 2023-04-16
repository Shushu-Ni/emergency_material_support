<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %><%@ include file="header.jsp" %><script src="js/jquery.validate.js"></script>






<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

    <div class="panel panel-default">
        <div class="panel-heading">
            添加用户:
        </div>
        <div class="panel-body">
            <form action="yonghuinsert.do" method="post" name="form1" id="form1"><!-- form 标签开始 -->
    
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">用户名<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入用户名" style="width:150px;" data-rule-required="true" data-msg-required="请填写用户名" remote="checkno.do?checktype=insert&table=yonghu&col=yonghuming" data-msg-remote="内容重复了" id="yonghuming" name="yonghuming" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">密码<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="password" class="form-control" placeholder="输入密码" style="width:150px;" data-rule-required="true" data-msg-required="请填写密码" id="mima" name="mima" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">姓名<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入姓名" style="width:150px;" data-rule-required="true" data-msg-required="请填写姓名" id="xingming" name="xingming" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">性别</label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_xingbie12" data-value="" id="xingbie" name="xingbie" style="width:250px">
<option value="男">男</option>
<option value="女">女</option>

</select>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">手机</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入手机" style="width:150px;" phone="true" data-msg-phone="请输入正确手机号码" id="shouji" name="shouji" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">邮箱</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入邮箱" style="width:150px;" email="true" data-msg-email="请输入有效邮件地址" id="youxiang" name="youxiang" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">身份证</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入身份证" style="width:150px;" idcard="true" data-msg-email="请输入有效身份证号码" id="shenfenzheng" name="shenfenzheng" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">地址</label>
        <div class="col-sm-10">
            
                                                    <input type="text" class="form-control" placeholder="输入地址" style="width:250px;" id="dizhi" name="dizhi" value=""/>                                            
        </div>
        
    </div>
</div>
                                                        <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs">部门<span style="color: red;">*</span></label>
        <div class="col-sm-10">
            
                                                    <select class="form-control class_bumen13" data-value="" data-rule-required="true" data-msg-required="请填写部门" id="bumen" name="bumen" style="width:250px">
<ssm:sql var="select" type="select">SELECT * FROM bumen ORDER BY id desc</ssm:sql>
<c:forEach items="${select}" var="m">
<option value="${m.id}">${m.bumenmingcheng}</option>
</c:forEach>

</select>                                            
        </div>
        
    </div>
</div>
                                <div class="form-group">
    <div class="row">
        <label style="max-width: 120px;min-height:18px;text-align: right" class="col-sm-2 hiddex-xs"> </label>
        <div class="col-sm-10">


            <input type="hidden" name="referer" value="./"/>
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




<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>