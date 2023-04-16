<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>



<div >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<div style="margin:15px 0 15px 0;background-color:#FFFFFF">
        <div class="common-title" style="margin-top: 4em;">
            <p>
                <i></i>
                <i></i>
            </p>
        </div>
        <div class="news_show">
            <span class="show_t">
                ${map.biaoti}
            </span>
            <span class="fa_time">
                                分类:<ssm:sql var="mapxinwenfenlei7" type="find">SELECT fenleimingcheng FROM xinwenfenlei where id='${map.fenlei}'</ssm:sql>${mapxinwenfenlei7.fenleimingcheng}   
                                点击率:${map.dianjilv}   
                                添加人:${map.tianjiaren}   
                
                </span>
            <div>

                ${map.neirong}

            </div>
            <div class="s_x clearfix">
                <ssm:sql var="prev" type="find">SELECT * FROM xinwenxinxi WHERE id<'${map.id}' ORDER BY id desc</ssm:sql>
                <c:choose>
<c:when test="${prev.id != null}">

                <a href="xinwenxinxidetail.do?id=${prev.id}" class="s_prev">上一篇：${prev.biaoti}</a>
                </c:when><c:otherwise>
                <a href="javascript:;" class="s_prev">上一篇：没有了</a>
                </c:otherwise></c:choose>
                <ssm:sql var="next" type="find">SELECT * FROM xinwenxinxi WHERE id>'${map.id}' ORDER BY id asc</ssm:sql>
                <c:choose>
<c:when test="${next.id != null}">

                <a href="xinwenxinxidetail.do?id=${next.id}">下一篇：${next.biaoti}</a>
                </c:when><c:otherwise>
                <a href="javascript:;">下一篇：没有了</a>
                </c:otherwise></c:choose>
            </div>
        </div>
    </div>



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>