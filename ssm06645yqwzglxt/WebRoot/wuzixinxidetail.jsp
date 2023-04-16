<%@ page language="java" import="dao.*" pageEncoding="UTF-8" %>
<%@ page language="java" import="java.util.*" %>
<%@page import="util.Info" %>
<%@ taglib prefix="ssm" uri="http://ssm" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="head.jsp" %>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="js/swiper/swiper.css">
<script src="js/swiper/swiper.js"></script>
<script src="js/jquery.validate.js"></script>


<div>


    <div class="container"><!-- 使用bootstrap css框架，container定宽，并剧中 https://v3.bootcss.com/css/#overview-container -->


        <div class="title-sn-title" style="margin:15px 0 15px 0;background-color:#FFFFFF">
            <div class="sn-title" :style="style">
                <div class="more">
                    <a href="">
                        More
                    </a>
                </div>
                <span>
                物资详情            </span>
            </div>
            <div class="sn-content">


                <div class="">
                    <div class="goods-info clearfix">
                        <div class="gallery-list">
                            <div class="swiper-container gallery-top" id="shangpin-galler">
                                <div class="swiper-wrapper">
                                </div>
                            </div>

                        </div>
                        <div class="goods-right-content">
                            <h3 class="title">${map.mingcheng}</h3>
                            <div class="descount">
                                <div>
                        <span class="name">
                            类型：
                        </span>
                                    <span class="val">
                            <ssm:sql var="mapwuzileibie13"
                                     type="find">SELECT leibiemingcheng FROM wuzileibie where id='${map.leixing}'</ssm:sql>${mapwuzileibie13.leibiemingcheng}                        </span>
                                </div>
                                <div>
                        <span class="name">
                            物资提供方：
                        </span>
                                    <span class="val">
                            <ssm:sql var="mapwuzitigongfang14"
                                     type="find">SELECT mingcheng FROM wuzitigongfang where id='${map.wuzitigongfang}'</ssm:sql>${mapwuzitigongfang14.mingcheng}                        </span>
                                </div>
                                <div>
                        <span class="name">
                            库存：
                        </span>
                                    <span class="val">
                                        ${map.kucun} </span>
                                </div>

                            </div>

                            ${readMap = Query.make("wuzixinxi").where("id", param.id).find();""}
                            <form class="form-inline" action="shenqingwuziinsert.do" id="form1" method="post">
                                <!-- form 标签开始 -->


                                <div style="display: none">

                                    <input type="hidden" id="bianhao" name="bianhao" value="${Info.html(map.bianhao)}"/>
                                    <input type="hidden" id="mingcheng" name="mingcheng"
                                           value="${Info.html(map.mingcheng)}"/>
                                    <input type="hidden" id="leixing" name="leixing" value="${Info.html(map.leixing)}"/>
                                    <input type="text" class="form-control" placeholder="输入申请人" style="width:150px;"
                                           readonly="readonly" id="shenqingren" name="shenqingren"
                                           value="${sessionScope.username}"/>
                                    <input type="hidden" name="wuzixinxiid" value="${map.id}"/>
                                    <input name="referer" id="referer" value="" type="hidden"/>
                                    <script>
                                        $('#referer').val(location.href);
                                    </script>
                                    <input type="hidden" name="zhuangtai" id="zhuangtai" value="待审核"/>
                                </div>

                                <div class="mt10">
                                    <div class="spec-list">
                                    </div>


                                    <div class="mt10">
                                        <c:choose>
                                            <c:when test="${sessionScope.username == null || '' == sessionScope.username }">

                                                <button type="button" class="btn btn-primary"
                                                        onclick="alert('你尚未登录，请登录后操作')">
                                                    申请物资
                                                </button>
                                            </c:when><c:otherwise>
                                            <button type="button" class="btn btn-success" onclick="location.href='shenqingwuziadd.do?id=${map.id}'">
                                                申请物资
                                            </button>
                                        </c:otherwise></c:choose>

                                    </div>
                                </div>

                                <!--form标签结束--></form>
                            <script>
                                $(function () {
                                    $('#form1').validate();
                                })
                            </script>
                        </div>
                    </div>
                    <div class="goods-content">
                        ${map.miaoshu} </span>
                    </div>

                    <script>
                        (function () {
                            var images = "${map.tupian}".split(",");
                            if (images.length > 0) {
                                for (var i = 0; i < images.length; i++) {
                                    var path = images[i]
                                    var src = '<div class="swiper-slide"><div class="img-box pb100"><div class="img" style="background-image: url(' + path + ')"></div></div></div>';
                                    $('#shangpin-galler .swiper-wrapper').append(src);
                                    $('#shangpin-thumb .swiper-wrapper').append(src);
                                }

                                var thumbsSwiper = new Swiper('#shangpin-thumb', {
                                    spaceBetween: 10,
                                    slidesPerView: 4,
                                    watchSlidesVisibility: true,//防止不可点击
                                })
                                var gallerySwiper = new Swiper('#shangpin-galler', {
                                    spaceBetween: 10,
                                    thumbs: {
                                        swiper: thumbsSwiper,
                                    }
                                })
                            }

                        })();

                    </script>

                </div>


            </div>
        </div>


        <!-- container定宽，并剧中结束 --></div>


</div>
<%@ include file="footer.jsp" %>
<%@ include file="foot.jsp" %>