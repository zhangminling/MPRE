<%@ Page Language="C#" AutoEventWireup="true" CodeFile="T16.aspx.cs" Inherits="T16" %>


<!DOCTYPE html>


<html>
<head runat="server">
    <title>多维度精神病康复评估系统<</title>
    <meta name="description" content="多维度精神病康复评估系统" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="always" name="referrer" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="shortcut icon" href="#" type="image/x-icon" />

    <!--Basic Styles-->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/css/weather-icons.min.css" rel="stylesheet" />

    <!--Beyond styles-->
    <link href="assets/css/beyond.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/demo.min.css" rel="stylesheet" />
    <link href="assets/css/typicons.min.css" rel="stylesheet" />
    <link href="assets/css/animate.min.css" rel="stylesheet" />
    <%--<link href="#" rel="stylesheet" type="text/css" />--%>

    <!--[if lte IE 8]>
        <script>
            alert("为获得最佳效果，建议使用IE9、Chrome10或更高版本的浏览器。");
        </script>
    <![endif]-->

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script type="text/javascript" src="assets/js/skins.min.js"></script>
    <script src="assets/js/jquery-2.0.3.min.js"></script>

    <!--日历控件-->
    <script type="text/javascript" src="My97DatePicker/WdatePicker.js" charset="gb2312"></script>


    <style type="text/css">
        #TestRow a div.databox:hover {
            border: 3px solid white;
        }
    </style>


</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div>
            <div class="navbar">
                <div class="navbar-inner">
                    <div class="navbar-container">
                        <!-- Navbar Barnd -->
                        <div class="navbar-header pull-left">
                            <a href="User_Center.aspx" class="navbar-brand">
                                <small style="font-size: 60%; padding-top: 3px;">
                                    <%-- <img src="assets/img/logo.png" alt="" />--%>
                                    多维度精神康复评估系统
                                </small>
                            </a>
                        </div>
                        <!-- /Navbar Barnd -->

                        <!-- Sidebar Collapse -->
                        <div class="sidebar-collapse" id="sidebar-collapse">
                            <i class="collapse-icon fa fa-bars"></i>
                        </div>
                        <!-- /Sidebar Collapse -->
                        <!-- Account Area and Settings --->
                        <div class="navbar-header pull-right">
                            <div class="navbar-account">
                                <%--  <ul class="account-area">
                                    <li>
                                        <a class="login-area dropdown-toggle" data-toggle="dropdown">
                                            <div class="avatar" title="View your public profile" style="border-left: 0px;">
                                                <asp:Image ID="AvatarImage" runat="server" Width="25" Height="25" />
                                            </div>
                                            <section>
                                                <h2><span class="profile"><span><%= Session["RoleName"] %></span></span></h2>
                                            </section>
                                        </a>
                                        <!--Login Area Dropdown-->
                                        <ul class="pull-right dropdown-menu dropdown-arrow dropdown-login-area">
                                            <!--Avatar Area-->
                                            <li>
                                                <div class="avatar-area">
                                                    <asp:Image ID="AvatarImage1" class="avatar1" runat="server" Width="110" Height="110" />
                                                    <span class="caption"><%= Session["UserName"] %> </span>
                                                </div>
                                            </li>
                                            <!--Avatar Area-->
                                            <li class="edit">
                                                <a href="#" class="pull-left"><%= Session["Email"] %> </a>
                                            </li>
                                            <!--Theme Selector Area-->
                                            <li class="theme-area">
                                                <ul class="colorpicker" id="skin-changer">
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #5DB2FF;" rel="assets/css/skins/blue.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #2dc3e8;" rel="assets/css/skins/azure.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #03B3B2;" rel="assets/css/skins/teal.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #53a93f;" rel="assets/css/skins/green.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #FF8F32;" rel="assets/css/skins/orange.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #cc324b;" rel="assets/css/skins/pink.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #AC193D;" rel="assets/css/skins/darkred.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #8C0095;" rel="assets/css/skins/purple.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #0072C6;" rel="assets/css/skins/darkblue.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #585858;" rel="assets/css/skins/gray.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #474544;" rel="assets/css/skins/black.min.css"></a></li>
                                                    <li><a class="colorpick-btn" href="#" style="background-color: #001940;" rel="assets/css/skins/deepblue.min.css"></a></li>
                                                </ul>
                                            </li>
                                            <!--/Theme Selector Area-->
                                            <li class="dropdown-footer">
                                                <a href="login2.aspx">退出
                                                </a>
                                            </li>
                                        </ul>
                                        <!--/Login Area Dropdown-->
                                    </li>
                                    <!-- /Account Area -->
                                    <!--Note: notice that setting div must start right after account area list.
                            no space must be between these elements-->
                                    <!-- Settings -->
                                </ul>--%>
                                <div class="setting">
                                    <a id="btn-log-out" title="退出" href="#">
                                        <i class="icon glyphicon glyphicon-log-out"></i>
                                    </a>
                                </div>
                                <!-- Settings -->
                            </div>
                        </div>
                        <!-- /Account Area and Settings -->
                    </div>
                </div>
            </div>
            <!-- /Navbar -->
            <!-- Footer -->
            <footer id="footer">
                <!-- Lower Footer -->
                <div id="lower-footer">

                    <div class="row">

                        <div class="col-lg-12 col-md-12 col-sm-12">
                            <div class="footer">
                                <p>版权所有 2016-2016 <span style="font-size: 14px; font-family: Verdana;">&copy;</span> xxxxx</p>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /Lower Footer -->
            </footer>
            <!-- /Footer -->
            <div class="main-container container-fluid">
                <!-- Page Container -->
                <div class="page-container">
                    <!-- Page Sidebar -->
                    <div class="page-sidebar" id="sidebar">
                        <!-- Page Sidebar Header-->
                        <div class="sidebar-header-wrapper">
                            <asp:TextBox ID="searchTextBox" runat="server" class="searchinput" placeholder="全站搜索" />
                            <i class="searchicon fa fa-search"></i>
                            <div class="searchhelper">编号或姓名搜索</div>
                            <%--   <asp:Button ID="goButton" Runat="server" 
          Text="Go" Width="36px" onclick="goButton_Click" />--%>
                        </div>


                        <!-- /Page Sidebar Header -->
                        <!-- Sidebar Menu -->
                        <ul class="nav sidebar-menu">
                            <!--Dashboard-->
                            <li class="active">
                                <a href="Dashboard.aspx">
                                    <i class="menu-icon glyphicon glyphicon-home"></i>
                                    <span class="menu-text">首页</span>
                                </a>
                            </li>

                            <!--Pages-->
                            <li>
                                <a href="#" class="menu-dropdown">
                                    <i class="menu-icon glyphicon glyphicon-paperclip"></i>
                                    <span class="menu-text">病人管理 </span>

                                    <i class="menu-expand"></i>
                                </a>
                                <ul class="submenu">
                                    <li>
                                        <a href="Patient_Info.aspx">
                                            <span class="menu-text">新增病人</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="Patient_List.aspx">
                                            <span class="menu-text">病人列表</span>
                                        </a>
                                    </li>

                                    <%--<li>
                                    <a href="#" class="menu-dropdown">
                                        <span class="menu-text">审核文章
                                        </span>
                                        <i class="menu-expand"></i>
                                    </a>

                                    <ul class="submenu">
                                        <li>
                                            <a href="Article_Audit.aspx">
                                                <i class="menu-icon fa fa-pencil-square-o"></i>
                                                <span class="menu-text">查看未审核文章</span>
                                            </a>
                                        </li>
                                    </ul>
                                </li>--%>
                                </ul>
                            </li>
                            <!--More Pages-->
                            <li>
                                <a href="#" class="menu-dropdown">
                                    <i class="menu-icon glyphicon glyphicon-link"></i>

                                    <span class="menu-text">测试管理
                                </span>
                                    <i class="menu-expand"></i>
                                </a>

                                <ul class="submenu">
                                    <li>
                                        <a href="#">
                                            <span class="menu-text">新增测试</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="menu-text">测试列表</span>
                                        </a>
                                    </li>


                                </ul>
                            </li>

                            <!--UI Elements-->
                            <li>
                                <a href="#" class="menu-dropdown">
                                    <i class="menu-icon fa fa-desktop"></i>
                                    <span class="menu-text">报告单管理 </span>
                                    <i class="menu-expand"></i>
                                </a>

                                <ul class="submenu">
                                    <li>
                                        <a href="#">
                                            <span class="menu-text">报告单列表</span>
                                        </a>
                                    </li>

                                </ul>
                            </li>

                            <!-- /Sidebar Menu -->

                        </ul>
                    </div>
                    <!-- /Page Sidebar -->
                    <!-- Page Content -->
                    <div class="page-content">

                        <!-- Page Header -->
                        <%--<div class="page-header position-relative">


                            <!--Header Buttons-->
                            <div class="header-buttons">
                                <a class="sidebar-toggler" href="#">
                                    <i class="fa fa-arrows-h"></i>
                                </a>
                                <a class="refresh" id="refresh-toggler" href="#">
                                    <i class="glyphicon glyphicon-refresh"></i>
                                </a>
                                <a class="fullscreen" id="fullscreen-toggler" href="#">
                                    <i class="glyphicon glyphicon-fullscreen"></i>
                                </a>
                            </div>
                            <!--Header Buttons End-->
                        </div>--%>
                        <!-- /Page Header -->

                        <!-- Page Body 主体内容 -->
                        <p>&nbsp;</p>
                        <div id="CurrentPosition">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置：<a href="Dashboard.aspx">首页</a>>> <a href="#">开始测试</a> >>  </div>
                        <div class="page-body" style="padding: 18px 20px 24px;">



                            <div class="row">

                                <div class="col-xs-12 col-md-12">
                                    <div class="widget">
                                        <div class="widget-header bg-blueberry">
                                            <i class="widget-icon fa fa-arrow-right"></i>
                                            <span class="widget-caption">病人基本资料</span>
                                            <div class="widget-buttons">


                                                <a href="#" data-toggle="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </a>

                                            </div>
                                            <!--Widget Buttons-->
                                        </div>
                                        <!--Widget Header-->
                                        <div class="widget-body">
                                            <div style="width: 100%; margin: auto; text-align: center">
                                                <table class="table">
                                                    <tr>
                                                        <th>姓名</th>
                                                        <th>
                                                            <asp:Label ID="Patient" runat="server"></asp:Label>
                                                        </th>

                                                        <th>编号</th>
                                                        <th>
                                                            <asp:Label ID="GUID" runat="server"></asp:Label></th>
                                                    </tr>

                                                    <tr>
                                                        <th>性别</th>
                                                        <th>
                                                            <asp:Label ID="Sex" runat="server"></asp:Label></th>
                                                        <th>出生日期</th>
                                                        <th>
                                                            <asp:Label ID="Birthday" runat="server"></asp:Label></th>
                                                    </tr>

                                                    <tr>
                                                        <th>就诊卡号1</th>
                                                        <th>
                                                            <asp:Label ID="Num1" runat="server"></asp:Label></th>
                                                        <th>联系电话1</th>
                                                        <th>
                                                            <asp:Label ID="Phone1" runat="server"></asp:Label></th>
                                                    </tr>


                                                </table>


                                                <code></code>
                                            </div>
                                            <!--Widget Body-->
                                        </div>
                                        <!--Widget-->

                                    </div>

                                </div>


                                <div class="col-xs-12 col-md-12">
                                    <div class="widget">
                                        <div class="widget-header bg-blue">
                                            <i class="widget-icon fa fa-arrow-right"></i>
                                            <span class="widget-caption" style="font-size: 15px;"><strong>阳性与阴性症状量表PANSS</strong></span>

                                        </div>
                                        <!--Widget Header-->
                                        <div class="widget-body">

                                            <p>使用说明：由Kay等于1987年编制，为他评量表。用来评定患者的精神病性症状。由包括7项阳性症状、7项阴性症状、16项一般病理症状及3项附加症状的四个分量表组成，共33项。按1-7级评分，后3个附加症状不记入总分。总分越高，反映病情越严重。该量表评估的精神病性症状比较全面，廓图可反映患者的整体临床相。但评定花费时间较长，大约30-50分钟，需系统培训。</p>
                                           
                                            <p>第一部分  阳性分项目</p>

                                            <p>P1 妄想（来源： I / H）</p>
                                            <div class="row" id="TestRow">
                                             <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">A</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">无</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">B</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">极轻</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">C</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">轻度</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">D</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">中度</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">E</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">偏重</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">F</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">重度</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">G</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">极重</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                                </div>


                                             <p>P2 *概念紊乱（来源：I）</p>
                                            <div class="row" id="TestRow">
                                             <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">A</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">无</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">B</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">极轻</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">C</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">轻度</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">D</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">中度</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">E</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">偏重</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div><div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">F</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">重度</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                                <div class="databox radius-bordered databox-shadowed databox-graded">
                                                    <div class="databox-left bg-azure">
                                                        <div class="databox-piechart">
                                                            <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#7fe2fa" style="width: 47px; height: 47px; line-height: 47px;"><span class="white font-90">G</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="databox-right">
                                                        <span class="databox-number azure">极重</span>
                                                        <%--<div class="databox-text darkgray">NEW USERS</div>--%>
                                                        <div class="databox-state bg-azure">
                                                         <i class="fa fa-check"></i>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                                </div>
                                             <code></code>
                                        </div>
                                        <!--Widget Body-->
                                    </div>
                                    <!--Widget-->
                                    
                                </div>


                            </div>

                        </div>
                    </div>
                    <!-- /end Page Body -->
                </div>
                <!-- /Page Content -->
            </div>
            <!-- /Page Container -->
            <!-- Main Container -->
            <!--Basic Scripts-->

            <script src="assets/js/bootstrap.min.js"></script>

            <!--Beyond Scripts-->
            <script src="assets/js/beyond.min.js"></script>
    </form>
</body>
</html>

<style type="text/css">
    body, table {
        font-size: 12px;
    }

    table {
        table-layout: fixed;
        empty-cells: show;
        border-collapse: collapse;
        margin: 0 auto;
    }

    td {
        height: 40px;
    }

    .table {
        border: 1px solid #cad9ea;
        color: #666;
    }

        .table th {
            height: 40px;
            text-align: center;
        }

        .table td, .table th {
            border: 1px solid #cad9ea;
            padding: 0 1em 0;
        }

            .table th p {
                line-height: 18px;
                margin: auto;
            }
</style>
