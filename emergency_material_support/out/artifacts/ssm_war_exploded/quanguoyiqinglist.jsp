<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>



<div >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<form action="?" class="search" style="margin:15px 0 15px 0;background-color:#FFFFFF">
                <table class="jd-search">
            <tbody>
                        <tr>
                <td class="label1">
                    地区                </td>
                <td>
                    
                    <input type="text" class="form-control" style="width: 150px" name="diqu" value="${param.diqu}" placeholder="请输入关键词"/>

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



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<div >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<div class="title-sn-title" style="margin:15px 0 15px 0;background-color:#FFFFFF">
        <div class="sn-title" :style="style">
            <div class="more">
                <a href="quanguoyiqinglist.do">
                    More
                </a>
            </div>
            <span>
                全国疫情            </span>
        </div>
        <div class="sn-content">
            

    

<div class="list-table">
        
        

        <table width="100%" border="1" class="table table-list table-bordered table-hover">
            <thead>
            <tr align="center">
                                <th> 地区 </th>
<th> 上报日期 </th>
<th> 新增 </th>
<th> 现有 </th>
<th> 累计 </th>
<th> 治愈 </th>
<th> 死亡 </th>
                                            </tr>
            </thead>
            <tbody>

            <c:set var="$i" value="0" /><c:forEach items="${list}" var="r"><c:set var="$i" value="${$i+1}" />
            <tr>
                                <td> ${r.diqu} </td>
<td> ${r.shangbaoriqi} </td>
<td> ${r.xinzeng} </td>
<td> ${r.xianyou} </td>
<td> ${r.leiji} </td>
<td> ${r.zhiyu} </td>
<td> ${r.siwang} </td>

                
                            </tr>
            </c:forEach>

            </tbody>
        </table>
    </div>


            ${page.info}
    

        </div>
    </div>



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>