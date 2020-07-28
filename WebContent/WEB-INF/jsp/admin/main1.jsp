<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
     <style>
   
    a:hover{
    cursor:pointer;
    }
    </style>
    <script language=javascript>
	// 提交分页的查询的表单
	function to_page(url1){
                // 我理解的你说的去括号中取值
                
                 $.ajax({ url:url1,
                         type:"post",
                         async : false, 
                        
                        success:function(data){
                                // 你的具体操作
                                console.log(data);
                                $("#inside").html(data);
                                //alert("成功");
                                
                        },
                        error: function() {  
                            alert("失败，请稍后再试！");  
                        }  
                });
        }
	
</script>
</head>
<body>
<div class="topbar-wrap white">
    <div class="topbar-inner clearfix">
        <div class="topbar-logo-wrap clearfix">
            <h1 class="topbar-logo none"><a href="index.html" class="navbar-brand">后台管理</a></h1>
            <ul class="navbar-list clearfix">
                <li><a class="on sendRequest" href="javascript::void(0)" onclick="to_page('toindex.action')">首页</a></li>
               
            </ul>
        </div>
        <div class="top-info-wrap">
            <ul class="top-info-list clearfix">
                <li>欢迎您，${sessionScope.user.username}！</li>
                
                <li><a href="javascript:if(confirm('确实要退出登录吗?'))location='/text2/login.action'">退出</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container clearfix">
     <div class="sidebar-wrap">
        <div class="sidebar-title">
            <h1>菜单</h1>
        </div>
        <div class="sidebar-content">
            <ul class="sidebar-list">
                <li>
                    <a class="a"><i class="icon-font">&#xe003;</i>基础信息维护</a>
                    <div class="p"><ul class="sub-menu"><%--房源信息--%>
                        <li><a href="/text2/ahouselist.action"><i class="icon-font">&#xe008;</i>房屋信息维护</a></li>
                        <li><a href="/text2/houselist.action"><i class="icon-font">&#xe008;</i>承租方信息管理</a></li>
                        <li><a href="/text2/houselist.action"><i class="icon-font">&#xe008;</i>承租方账号管理</a></li>
                    </ul>
                    </div>
                </li>
                <li>
                    <a class="a"><i class="icon-font">&#xe018;</i>安全管理</a>
                    <div class="p"><ul class="sub-menu"><%--租赁信息--%>
                        <li><a href="/text2/zulist/myzulist.action"><i class="icon-font">&#xe008;</i>现状评定</a></li><%--我的租赁--%>
                        <li><a href="/text2/checkout/getmycheckout.action"><i class="icon-font">&#xe008;</i>巡检管理</a></li>
                        <li><a href="/text2/checkout/getmycheckout.action"><i class="icon-font">&#xe008;</i>隐患情况记录</a></li>
                        <li><a href="/text2/checkout/getmycheckout.action"><i class="icon-font">&#xe008;</i>整改情况说明</a></li><%--已退租列表--%>
                    </ul>
                    </div>
                </li>
                <li>
                    <a class="a"><i class="icon-font">&#xe018;</i>房屋租赁管理</a>
                    <div class="p"><ul class="sub-menu">
                        <li><a href="/text2/zulist/findzulist.action"><i class="icon-font">&#xe008;</i>招标管理</a></li>
                        <li><a href="/text2/checkout/getallcheckout.action"><i class="icon-font">&#xe008;</i>投标管理</a></li>
                        <li><a href="/text2/checkout/getallcheckout.action"><i class="icon-font">&#xe008;</i>合同管理</a></li>
                    </ul>
                    </div>
                </li>
                <li>
                    <a class="a"><i class="icon-font">&#xe018;</i>收款管理</a>
                        <div class="p"><ul class="sub-menu">
                        <li><a href="/text2/findapplylist.action"><i class="icon-font">&#xe008;</i>收款登记</a></li>
                    </ul>
                     </div>
                </li>
                <li>
                    <a class="a"><i class="icon-font">&#xe018;</i>统计报表</a>
       <div class="p">              <ul class="sub-menu">
                        <li><a href="/text2/wrong/wronglist.action"><i class="icon-font">&#xe008;</i>房屋信息明细表</a></li>
                       	<li><a href="/text2/wrong/selectall.action"><i class="icon-font">&#xe008;</i>租赁明细表</a></li>
                        <li><a href="/text2/wrong/selectall.action"><i class="icon-font">&#xe008;</i>房屋收款明细</a></li>
                    </ul>
                     </div>
                </li>
                 <%--<li>
                    <a class="a"><i class="icon-font">&#xe003;</i>租金信息</a>
            <div class="p">          <ul class="sub-menu">
                    <li><a href="/text2/paid/showaddpaid.action"><i class="icon-font">&#xe008;</i>我要收租</a></li>
                        <li><a href="/text2/paid/topaidlist.action"><i class="icon-font">&#xe008;</i>租客待缴租金</a></li>
                        <li><a href="/text2/paid/selectall.action"><i class="icon-font">&#xe008;</i>租客已缴租金</a></li>
       
                    </ul>
                     </div>
                </li>
                <li>
                    <a class="a"><i class="icon-font">&#xe018;</i>我的日程</a>
            <div class="p">          <ul class="sub-menu">
                        <li><a href="/text2/schedule/selectAll.action"><i class="icon-font">&#xe017;</i>查看日程</a></li>
                       	<li><a href="/text2/schedule/toinsert.action"><i class="icon-font">&#xe017;</i>添加日程</a></li>
                        
                    </ul>
                     </div>
                </li>
                <li>
                    <a class="a"><i class="icon-font">&#xe018;</i>其他操作</a>
               <div class="p">      <ul class="sub-menu">
                        <li><a href="/text2/findalluserlist.action"><i class="icon-font">&#xe017;</i>账户管理</a></li>
                       
                        
                    </ul>
                    </div>
                </li>--%>
            </ul>
        </div>
     </div>
    <!--/sidebar-->
    <div class="main-wrap">
        <div class="crumb-wrap">
            <div class="crumb-list"><i class="icon-font">&#xe06b;</i><span>欢迎使用本系统！</span></div>
        </div>
        
        <div class="result-wrap" id="inside">
       <jsp:include page="${mainPage==null?'../admin/index.jsp':mainPage}"></jsp:include>
            </div>
        </div>
        
    </div>
    <!--/main-->
</div>
</body>
</html>