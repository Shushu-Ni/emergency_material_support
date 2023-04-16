<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>



<div style="margin:20px 0 0 0">

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<div class="title-sn-title" style="margin:15px 0 15px 0;background-color:#FFFFFF">
        <div class="sn-title" :style="style">
            <div class="more">
                <a href="xinwenxinxilist.do">
                    More
                </a>
            </div>
            <span>
                新闻信息            </span>
        </div>
        <div class="sn-content">
            


    

<div class="">
                            <div style="margin-bottom: 20px">
                

    

<form action="?" class="search" style="background-color:#FFFFFF">
                <table class="jd-search">
            <tbody>
                        <tr>
                <td class="label1">
                    标题                </td>
                <td>
                    
                    <input type="text" class="form-control" style="width: 150px" name="biaoti" value="${param.biaoti}" placeholder="请输入关键词"/>

                                                            </td>
            </tr>
                        <tr>
                <td class="label1">
                    分类                </td>
                <td>
                                            <p class="search-radio">
                        <input type="hidden" name="fenlei" value="${param.fenlei}"/>
                        <c:choose>
<c:when test="${param.fenlei == null || '' == param.fenlei }">

                        <a href="javascript:;" data-value="" onclick="selectRadio(this)" class="active">全部</a>
                        </c:when><c:otherwise>
                        <a href="javascript:;" data-value="" onclick="selectRadio(this)">全部</a>
                        </c:otherwise></c:choose>
                                                <ssm:sql var="mapxinwenfenlei4" type="select">SELECT id,fenleimingcheng FROM xinwenfenlei</ssm:sql>                    <c:forEach items="${mapxinwenfenlei4}" var="r">
                    <c:choose>
<c:when test="${r.id == param.fenlei }">

                        <a href="javascript:;" data-value="${r.id}" onclick="selectRadio(this)" class="active">${r.fenleimingcheng}</a>
                        </c:when><c:otherwise>
                        <a href="javascript:;" data-value="${r.id}" onclick="selectRadio(this)">${r.fenleimingcheng}</a>
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
                <div class="news-list">
            <ul>
                <c:forEach items="${list}" var="r">
                <li class="clearfix">
                                        <a href="xinwenxinxidetail.do?id=${r.id}">
                    <div class="thumb">
                        <div class="img-box pb100">
                            <div class="img" style="background-image: url('${r.tupian}')"></div>
                        </div>
                    </div>
                    </a>
                    
                    <div class="news-content-text ">
                        <a href="xinwenxinxidetail.do?id=${r.id}">
                            <h3>${r.biaoti}</h3>
                        </a>
                                                <div class="description">
                            ${Info.subStr(r.neirong, 80)}
                        </div>
                                                                        <div class="other-content">
                                                        <span>添加人：${r.tianjiaren}</span>
                                                        <span>点击率：${r.dianjilv}</span>
                                                        <span>分类：<ssm:sql var="mapxinwenfenlei5" type="find">SELECT fenleimingcheng FROM xinwenfenlei where id='${r.fenlei}'</ssm:sql>${mapxinwenfenlei5.fenleimingcheng}</span>
                                                    </div>
                                            </div>
                </li>
                </c:forEach>
            </ul>
        </div>
                ${page.info}
            </div>




        </div>
    </div>



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>