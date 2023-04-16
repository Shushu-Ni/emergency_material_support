<%@ page import="util.Request" %>
<%@ page import="dao.Query" %>
<%@ page import="dao.CommDAO" %>
<%@ page import="util.Info" %>
<%@ page import="util.Timer" %>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="head.jsp" %>

<head>
    <title>Title</title>
    <%--<link rel="stylesheet" href="css/style.css"/>--%>
    <script src="js/datepicker/WdatePicker.js"></script>

    <script src="js/highcharts/highcharts.js"></script>
    <script src="js/highcharts/modules/exporting.js"></script>
    <script src="js/highcharts/modules/series-label.js"></script>
    <script src="js/highcharts/modules/oldie.js"></script>

</head>

<div style="padding: 10px">

    <div class="panel panel-default">
        <div class="panel-heading">
            <span class="module-name">
                物资统计分析
            </span>
        </div>
        <div class="panel-body">
            <div class="pa10 bg-warning">
                <form action="?" method="get" id="formSearch">
                    开始时间：<input type="text" readonly name="kaishiriqi" value="<%=Request.get("kaishiriqi")%>"
                                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
                    结束时间：<input type="text" readonly name="jieshuriqi" value="<%=Request.get("jieshuriqi")%>"
                                onclick="WdatePicker({dateFmt:'yyyy-MM-dd',lang:'zh-cn'})">
                    <button type="submit" class="btn btn-success">提交</button>
                    <button type="button" class="btn btn-success" onclick="window.print()">打印</button>
                </form>
            </div>
            <%
                String where = "1=1";
                if (!Request.get("kaishiriqi").equals("")) {
                    where += " AND addtime>='" + Request.get("kaishiriqi") + " 00:00:00' ";
                }
                if (!Request.get("jieshuriqi").equals("")) {
                    where += " AND addtime<='" + Request.get("jieshuriqi") + " 23:59:59' ";
                }
                List<HashMap> list = Query.make("wuzixinxi").where(where).order("id desc").select();
                HashMap zong = Query.make("wuzixinxi").field("SUM(kucun) sum").find();
            %>

            <style>
                th {
                    text-align: center;
                }
            </style>

            <table class="table">
                <thead>
                <tr width="150">
                    <th width="500">物资名称</th>
                    <th width="200">现库存</th>
                    <th>发放数量</th>
                    <th>入库数量</th>
                </tr>
                </thead>
                <tbody>
                <% for (HashMap map : list) { %>
                <tr align="center">
                    <td>
                        <%= map.get("mingcheng") %>
                    </td>
                    <td>
                        <%= map.get("kucun") %>
                    </td>
                    <td>
                        <%
                            HashMap chu = Query.make("fafangwuzi").where("bianhao", map.get("bianhao")).field("Ifnull(SUM(shenqingshuliang),0) shen").find();
                        %>
                        出库数：<%= chu.get("shen") %>　　&nbsp;
                    </td>
                    <td>
                        <%
                            HashMap ru = Query.make("ruku").where("wuzixinxiid", map.get("id")).field("Ifnull(SUM(rukushuliang),0) rushu").find();
                        %>
                        入库数：<%= ru.get("rushu") %>　　&nbsp;
                    </td>
                </tr>
                <%}%>
                <tr align="center" style="background-color: rgba(234,57,234,0.29)">
                    <td align="center" colspan="2"> 总库存 ：<span style="color: #ff180a"><%=zong.get("sum")%> </span>
                    </td>
                    <%
                        HashMap zchu = Query.make("fafangwuzi").field("Ifnull(SUM(shenqingshuliang),0) chu").where(where).find();
                        HashMap zru = Query.make("ruku").field("Ifnull(SUM(rukushuliang),0) ru").where(where).find();
                    %>
                    <td colspan="2">
                        总发放：
                        <span style="color: #ff180a"><%=zchu.get("chu") %>　　 &nbsp;
                        总入库：
                        <span style="color: #ff180a"><%=zru.get("ru")%>　
                    </td>
                </tr>
                <tr>
                    <td id="container1" colspan="4" style="min-width:750px;height:50%"></td>
                    <script>
                        var chart = Highcharts.chart('container1', {
                            chart: {
                                type: 'column'
                            },
                            title: {
                                text: '物资库存总数'
                            },
                            subtitle: {
                                text: '数据来源: 物资信息表'
                            },
                            xAxis: {
                                categories: [

                                    ''

                                ],
                                crosshair: true
                            },
                            yAxis: {
                                min: 0,
                                title: {
                                    text: '库存'
                                }
                            },
                            tooltip: {
                                // head + 每个 point + footer 拼接成完整的 table
                                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                                    '<td style="padding:0"><b>{point.y:.1f} </b></td></tr>',
                                footerFormat: '</table>',
                                shared: true,
                                useHTML: true
                            },
                            plotOptions: {
                                column: {
                                    borderWidth: 0
                                }
                            },
                            series: [
                                <%  for (HashMap map : list) { %>
                                {
                                    name: '<%= map.get("mingcheng") %>',
                                    data: [<%=map.get("kucun")%>]
                                },
                                <%}%>
                            ]
                        });
                    </script>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>