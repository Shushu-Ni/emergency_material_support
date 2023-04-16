<%@ page language="java" import="dao.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.util.*"%>
<%@page import="util.Info"%>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>

<link rel="stylesheet" href="js/swiper/swiper.css">
<script src="js/swiper/swiper.js"></script>


<div >

    ${bhtList = Query.make("lunbotu").order("id desc").limit(5).select();""}
    

<div class="swiper-container" id="banner28">
        <div class="swiper-wrapper">
            <c:forEach items="${bhtList}" var="bht">
            <div class="swiper-slide">
                <div class="decoimg_b2">
                    <a class="btn btn-" href="${bht.url}" style="background-image: url('${bht.image}'); height: 420px"></a>
                </div>
            </div>
            </c:forEach>
        </div>
        <!-- 如果需要分页器 -->
        <div class="swiper-pagination"></div>
        <!-- 如果需要导航按钮 -->
                <div class="swiper-button-prev"></div>
        <div class="swiper-button-next"></div>
            </div>


    

<script>
        var mySwiper = new Swiper ('#banner28', {
            loop: true, // 循环模式选项
            autoplay:{
                delay:3000,
                disableOnInteraction:false
            },
            // 如果需要分页器
            pagination: {
                el: '.swiper-pagination',
            },
                        // 如果需要前进后退按钮
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
                        // 如果需要滚动条
            /*scrollbar: {
                el: '.swiper-scrollbar',
            },*/
        })
    </script>



</div>
<div >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<div class="jianli" style="margin:15px 0 15px 0;background-color:#FFFFFF">
        <h3 class="title">疫情物资</h3>
        <div class="sap_tabs">
            <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                <ul class="resp-tabs-list wow fadeInUp animated clearfix" data-wow-delay=".7s">
                                        <li class="resp-tab-item"><span>生活用品</span></li>
                                        <li class="resp-tab-item"><span>医疗用品</span></li>
                                    </ul>
                <div class="resp-tabs-container">
                                        <div class="tab-1 resp-tab-content">
                        <div class="tab_img clearfix">
                            ${wuzixinxilist32 = Query.make("wuzixinxi").where("leixing", 1).limit(6).order("id desc").select();""}                            <div class="row">
    
                                <c:forEach items="${wuzixinxilist32}" var="r">
                                <div class="col-md-2">
    
                                    <div class="portfolio-grids">
                                        <div class="grid">
                                            <a href="wuzixinxidetail.do?id=${r.id}" class="swipebox">
                                                <div class="img-box pb100">
                                                    <div class="img" style="background-image: url('${r.tupian}');background-repeat: no-repeat;"></div>
                                                </div>
                                                <div class="figcaption">
                                                    <h4><span>${r.mingcheng}</span></h4>
                                                    <p>${Info.subStr(r.miaoshu, 30)}</p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                
</div>
                                </c:forEach>
                            
</div>

                        </div>
                    </div>
                                        <div class="tab-1 resp-tab-content">
                        <div class="tab_img clearfix">
                            ${wuzixinxilist33 = Query.make("wuzixinxi").where("leixing", 2).limit(6).order("id desc").select();""}                            <div class="row">
    
                                <c:forEach items="${wuzixinxilist33}" var="r">
                                <div class="col-md-2">
    
                                    <div class="portfolio-grids">
                                        <div class="grid">
                                            <a href="wuzixinxidetail.do?id=${r.id}" class="swipebox">
                                                <div class="img-box pb100">
                                                    <div class="img" style="background-image: url('${r.tupian}');background-repeat: no-repeat;"></div>
                                                </div>
                                                <div class="figcaption">
                                                    <h4><span>${r.mingcheng}</span></h4>
                                                    <p>${Info.subStr(r.miaoshu, 30)}</p>
                                                </div>
                                            </a>
                                        </div>
                                    </div>
                                
</div>
                                </c:forEach>
                            
</div>

                        </div>
                    </div>
                                    </div>
            </div>
        </div>
    </div>


    

<script style="margin:15px 0 15px 0;background-color:#FFFFFF">
        $(document).ready(function () {
            $('#horizontalTab').on('click' , '.resp-tab-item' , function () {
                var index = $(this).index();
                $('#horizontalTab .resp-tab-item.resp-tab-active').removeClass('resp-tab-active');
                $(this).addClass('resp-tab-active');
                $('#horizontalTab .resp-tabs-container .resp-tab-content.resp-content-active').removeClass('resp-content-active');
                $('#horizontalTab .resp-tabs-container .resp-tab-content:eq('+index+')').addClass('resp-content-active');
            });
            $('#horizontalTab .resp-tab-item:eq(0)').click();
        });

    </script>



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<div >

    

<div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->

                    

    

<div class="title-sn-title" style="margin:15px 0 15px 0;background-color:#FFFFFF">
        <div class="sn-title" :style="style">
            <div class="more">
                <a href="xinwenxinxilist.do">
                    More
                </a>
            </div>
            <span>
                新闻公告            </span>
        </div>
        <div class="sn-content">
            


    

<div class="">
        ${xinwenxinxilist = Query.make("xinwenxinxi").limit(4).select();""}                <div class="news-list">
            <ul>
                <c:forEach items="${xinwenxinxilist}" var="r">
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
                                                                    </div>
                </li>
                </c:forEach>
            </ul>
        </div>
            </div>




        </div>
    </div>



        
    
<!-- container定宽，并剧中结束 --></div>



</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>