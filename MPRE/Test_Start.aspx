<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test_Start.aspx.cs" Inherits="Test_Start" %>

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


      <script>
        $(document).ready(function () {
            //alert("Hello!");
            $("#TestRow div.databox-right").hover(function () {
                $(this).css("background-color", "#EEE8AB");
                //alert("H");
            }, function () {
                $(this).css("background-color", "#ffffff");
            });
        });
    </script>


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
                                        <a href="Test_Start.aspx">
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
                        <div class="page-header position-relative">


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
                        </div>
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
                                                            <asp:Label ID="Patient" runat="server" ></asp:Label>
                                                        </th>

                                                        <th>编号</th>
                                                        <th>
                                                            <asp:Label ID="GUID" runat="server" ></asp:Label></th>
                                                    </tr>

                                                    <tr>
                                                        <th>性别</th>
                                                        <th>
                                                            <asp:Label ID="Sex" runat="server" ></asp:Label></th>
                                                        <th>出生日期</th>
                                                        <th>
                                                            <asp:Label ID="Birthday" runat="server"></asp:Label></th>
                                                    </tr>

                                                    <tr>
                                                        <th>就诊卡号1</th>
                                                        <th>
                                                            <asp:Label ID="Num1" runat="server" ></asp:Label></th>
                                                        <th>联系电话1</th>
                                                        <th>
                                                            <asp:Label ID="Phone1" runat="server" ></asp:Label></th>
                                                    </tr>


                                                </table>


                                                <code>
                                                </code>
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
                                            <span class="widget-caption" style="font-size: 15px;"><strong>测试维度</strong></span>

                                        </div>
                                        <!--Widget Header-->
                                        <div class="widget-body">

                                            <h3><strong>功能维度</strong> </h3>
                                            <hr />
                                            <div class="row" id="TestRow">
                                                <a href="#">
                                                    <div class="col-lg-3 col-sm-6 col-xs-12">

                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T1</strong></span></div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">GAF</span>
                                                                <div class="databox-text darkgray">大体功能评定量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </a>
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T2</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">PSP</span>
                                                                <div class="databox-text darkgray">个人与社会表现量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T3</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">WHO-DAS</span>
                                                                <div class="databox-text darkgray">世界卫生组织残疾评定量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T4</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">BJ-PERFECT</span>
                                                                <div class="databox-text darkgray">操作性功能评估测试</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T5</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">LSP</span>
                                                                <div class="databox-text darkgray">独立能力</div>
                                                                <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T6</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">W&L</span>
                                                                <div class="databox-text darkgray">工作与学习</div>
                                                                <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T7</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">SSPA</span>
                                                                <div class="databox-text darkgray">社会关系</div>
                                                                <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                            </div>


                                            <h3><strong>躯体维度</strong> </h3>
                                            <hr />
                                            <div class="row" id="TestRow">
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T8</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">Body</span>
                                                                <div class="databox-text darkgray">躯体维度量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                            </div>


                                            <h3><strong>生命价值和质量维度</strong> </h3>
                                            <hr />
                                            <div class="row" id="TestRow">
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T9</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">Quality</span>
                                                                <div class="databox-text darkgray">质量维度</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T10</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MOS SF-36</span>
                                                                <div class="databox-text darkgray">健康调查问卷</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T11</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">GSES</span>
                                                                <div class="databox-text darkgray">一般自我效能感量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                 <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T12</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">C-MLQ</span>
                                                                <div class="databox-text darkgray">中文人生意义问卷</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                   <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T13</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">ISMI</span>
                                                                <div class="databox-text darkgray">污名量表</div>
                                                                <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                   <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="#fa8872" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T14</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">SHS-9</span>
                                                                <div class="databox-text darkgray">精神分裂症希望量表</div>
                                                                <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                            </div>


                                            <h3><strong>症状维度</strong> </h3>
                                            <hr />
                                            <div class="row" id="TestRow">
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="Test.aspx"  target="_blank">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T15</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">CGI</span>
                                                                <div class="databox-text darkgray">临床总体印象量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="Test2.aspx" target="_blank">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T16</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">PANSS</span>
                                                                <div class="databox-text darkgray">阳性与阴性症状量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                                <div class="row" id="TestRow">
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T17</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MGASR</span>
                                                                <div class="databox-text darkgray">自杀风险评估量表</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                      <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T18</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MOAS</span>
                                                                <div class="databox-text darkgray">显性攻击行为量表</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T19</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">CDSS</span>
                                                                <div class="databox-text darkgray">卡尔加里抑郁量表</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T20</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MCCB</span>
                                                                <div class="databox-text darkgray">实物单独模块</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                </div>



                                            <h3><strong>治疗意愿及能力维度</strong> </h3>
                                            <hr />
                                            <div class="row" id="TestRow">
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T21</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">ITA</span>
                                                                <div class="databox-text darkgray">自知力与自疗态度</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T22</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MMAA</span>
                                                                <div class="databox-text darkgray">药物管理能力评估</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T23</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MAQ</span>
                                                                <div class="databox-text darkgray">药物依从性问卷</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>



                                            </div>


                                            <!------>


                                            <h3><strong>资源维度</strong> </h3>
                                            <hr />
                                            <div class="row" id="TestRow">
                                                <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-palegreen">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T24</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">SSE</span>
                                                                <div class="databox-text darkgray">社会支持评定量表</div>
                                                                <div class="databox-stat bg-palegreen radius-bordered">
                                                                    <div class="stat-text">核心</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>

                                            </div>
                                             <div class="row" id="TestRow">
                                                 <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T25</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">FAD</span>
                                                                <div class="databox-text darkgray">家庭功能评定量表</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                 <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T26</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">Marriage</span>
                                                                <div class="databox-text darkgray">婚恋评估</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                                 <div class="col-lg-3 col-sm-6 col-xs-12">
                                                    <a href="#">
                                                        <div class="databox">
                                                            <div class="databox-left bg-azure">
                                                                <div class="databox-piechart">
                                                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" style="width: 47px; height: 47px; line-height: 47px;"><span style="color: black; font-size: 18px"><strong>T27</strong></span><canvas width="47" height="47"></canvas>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="databox-right  bordered bordered-platinum" style="border: 1px solid">
                                                                <span class="databox-number darkgray">MR</span>
                                                                <div class="databox-text darkgray">医疗资源评估</div>
                                                               <div class="databox-stat bg-azure radius-bordered">
                                                                    <div class="stat-text">补充</div>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>


                                                 </div>



                                            <code></code>
                                        </div>
                                        <!--Widget Body-->
                                    </div>
        <!--Widget--></div>

                              
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
