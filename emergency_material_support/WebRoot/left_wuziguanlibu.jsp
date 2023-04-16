<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages0" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>物资申请管理</span>
    </a>
    <div id="pages0" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="shenqingwuzi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">申请物资查询</a>
            </li>
            <li class="sidebar-list-item"><a href="shenhe_list_shenpiren.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资审核查询</a>
            </li>
            <li class="sidebar-list-item"><a href="fafangwuzi_list_fafangren.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">发放物资查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages1" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>物资信息管理</span>
    </a>
    <div id="pages1" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="wuzixinxi_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资信息查询</a>
            </li>
            <li class="sidebar-list-item"><a href="ruku_list_rukuren.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资入库查询</a>
            </li>
            <li class="sidebar-list-item"><a href="total.jsp" target="main"
                                             class="sidebar-link text-muted pl-lg-5">物资统计查询</a>
            </li>
        </ul>
    </div>
</li>
<!--  <li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages2" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>健康报备管理</span>
    </a>
    <div id="pages2" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="jiankangdaka_list_dakaren.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">打卡记录</a>
            </li>
        </ul>
    </div>
</li> -->
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages3" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>留言管理</span>
    </a>
    <div id="pages3" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="liuyanban_list.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">留言查询</a>
            </li>
        </ul>
    </div>
</li>
<li class="sidebar-list-item">
    <a href="javascript:;" data-toggle="collapse" data-target="#pages4" aria-expanded="false" aria-controls="pages"
       class="sidebar-link text-muted">
        <span>个人中心</span>
    </a>
    <div id="pages4" class="collapse">
        <ul class="sidebar-menu list-unstyled border-left border-primary border-thick">
            <li class="sidebar-list-item"><a href="admins_updtself.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">修改个人资料</a>
            </li>
            <li class="sidebar-list-item"><a href="mod.do" target="main"
                                             class="sidebar-link text-muted pl-lg-5">修改密码</a>
            </li>
        </ul>
    </div>
</li>
