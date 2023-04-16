<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>物资信息管理</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="wuzileibie_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资类别添加</a>
            </li>
            <li class="sidebar-list-item"><a href="wuzileibie_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资类别查询</a>
            </li>
            <li class="sidebar-list-item"><a href="wuzixinxi_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资信息添加</a>
            </li>
            <li class="sidebar-list-item"><a href="wuzixinxi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资信息查询</a>
            </li>
            <li class="sidebar-list-item"><a href="ruku_list.do" target="main" class="sidebar-link text-muted pl-lg-5">物资入库查询</a>
            </li>
            <li class="sidebar-list-item"><a href="total.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资统计查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>申请物资管理</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shenqingwuzi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">申请物资查询</a>
            </li>
            <li class="sidebar-list-item"><a href="shenhe_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">审核查询</a>
            </li>
            <li class="sidebar-list-item"><a href="fafangwuzi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">发放物资查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>物资提供方管理</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="wuzitigongfang_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资提供方添加</a>
            </li>
            <li class="sidebar-list-item"><a href="wuzitigongfang_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资提供方查询</a>
            </li>
        </ul>
    </div>
</li>
<!-- <li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>全国疫情管理</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="quanguoyiqing_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">全国疫情添加</a>
            </li>
            <li class="sidebar-list-item"><a href="quanguoyiqing_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">全国疫情查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages4" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>健康打卡管理</span>
    </a>
    <div id="pages4" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">

            <li class="sidebar-list-item"><a href="jiankangdaka_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">健康打卡查询</a>
            </li>
        </ul>
    </div>
</li>  -->
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages5" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>部门管理</span>
    </a>
    <div id="pages5" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="bumen_add.do" target="main" class="sidebar-link text-muted pl-lg-5">部门添加</a>
            </li>
            <li class="sidebar-list-item"><a href="bumen_list.do" target="main" class="sidebar-link text-muted pl-lg-5">部门查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages6" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>新闻管理</span>
    </a>
    <div id="pages6" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="xinwenfenlei_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">分类添加</a>
            </li>
            <li class="sidebar-list-item"><a href="xinwenfenlei_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">分类查询</a>
            </li>
            <li class="sidebar-list-item"><a href="xinwenxinxi_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">新闻添加</a>
            </li>
            <li class="sidebar-list-item"><a href="xinwenxinxi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">新闻查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages7" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>系统管理</span>
    </a>
    <div id="pages7" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="liuyanban_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">留言管理</a>
            </li>
            <li class="sidebar-list-item"><a href="lunbotu_add.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">轮播图添加</a>
            </li>
            <li class="sidebar-list-item"><a href="lunbotu_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">轮播图查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages8" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>账号管理</span>
    </a>
    <div id="pages8" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="admins_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">管理员账号管理</a>
            </li>
            <li class="sidebar-list-item"><a href="admins_add.do" target="main" class="sidebar-link text-muted pl-lg-5">管理员账号添加</a>
            </li>
            <li class="sidebar-list-item"><a href="yonghu_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">注册用户管理</a>
            </li>
            <li class="sidebar-list-item"><a href="yonghu_add.do" target="main" class="sidebar-link text-muted pl-lg-5">添加新用户</a>
            </li>
            <li class="sidebar-list-item"><a href="mod.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">密码修改</a>
            </li>
        </ul>
    </div>
</li>
