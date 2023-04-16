<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>



<div >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<div class="title-sn-title" style="margin:15px 0 15px 0;background-color:#FFFFFF">
        <div class="sn-title" :style="style">
            <div class="more">
                <a href="">
                    More
                </a>
            </div>
            <span>
                疫情物资            </span>
        </div>
        <div class="sn-content">
            

    

<div class="fengjing clearfix">
                            <div style="margin-bottom: 30px">
                

    

<form action="?" class="search" style="margin:15px 0 15px 0;background-color:#FFFFFF">
                <table class="jd-search">
            <tbody>
                        <tr>
                <td class="label1">
                    名称                </td>
                <td>
                    
                    <input type="text" class="form-control" style="width: 150px" name="mingcheng" value="${param.mingcheng}" placeholder="请输入关键词"/>

                                                            </td>
            </tr>
                        <tr>
                <td class="label1">
                    类型                </td>
                <td>
                                            <p class="search-radio">
                        <input type="hidden" name="leixing" value="${param.leixing}"/>
                        <c:choose>
<c:when test="${param.leixing == null || '' == param.leixing }">

                        <a href="javascript:;" data-value="" onclick="selectRadio(this)" class="active">全部</a>
                        </c:when><c:otherwise>
                        <a href="javascript:;" data-value="" onclick="selectRadio(this)">全部</a>
                        </c:otherwise></c:choose>
                                                <ssm:sql var="mapwuzileibie10" type="select">SELECT id,leibiemingcheng FROM wuzileibie</ssm:sql>                    <c:forEach items="${mapwuzileibie10}" var="r">
                    <c:choose>
<c:when test="${r.id == param.leixing }">

                        <a href="javascript:;" data-value="${r.id}" onclick="selectRadio(this)" class="active">${r.leibiemingcheng}</a>
                        </c:when><c:otherwise>
                        <a href="javascript:;" data-value="${r.id}" onclick="selectRadio(this)">${r.leibiemingcheng}</a>
                    </c:otherwise></c:choose>
                        </c:forEach>
                                            </p>
                                    </td>
            </tr>
                                    <tr>
                <td></td>
                <td><button type="submit" class="btn btn-default">
    搜索
</button></td>
            </tr>
                        </tbody>
        </table>
    </form>



            </div>
                <div class="row">
    
            <c:forEach items="${list}" var="r">
            <div class="col-md-2">
    
                <div class="card">
                    <a href="wuzixinxidetail.do?id=${r.id}">
                        <div class="img-box pb100">
                            <div class="img card-img-top" style="background-image: url('${r.tupian}')"></div>
                        </div>
                    </a>
                    <div class="card-body">
                        <div class="feng" >
                            <div class="feng-left" >
                                <a href="wuzixinxidetail.do?id=${r.id}">
                                    <h5>${Info.subStr(r.mingcheng, 15)}</h5>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            
</div>
            </c:forEach>
        
</div>

    </div>




        </div>
    </div>



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>