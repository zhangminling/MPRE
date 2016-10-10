<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Patient_Info.aspx.cs" Inherits="Patient_Info" %>

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
   <script  type="text/javascript" src="My97DatePicker/WdatePicker.js" charset="gb2312"></script>


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
                                <small style="font-size:60%;padding-top:3px;">
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
                                    <a id="btn-log-out" title="退出" href="#" >
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
                            <p>版权所有 2016-2016 <span style="font-size:14px; font-family:Verdana;">&copy;</span> xxxxx</p>
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
                        <asp:TextBox ID="searchTextBox" Runat="server" class="searchinput"  placeholder="全站搜索"/>
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
                       <div id="CurrentPosition">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当前位置：<a href="Dashboard.aspx">后台首页</a>>> <a href="#">病人管理</a> >>  </div>
                          <div class="page-body" style="padding: 18px 20px 24px;">
                                 <asp:Label ID="IDLabel" runat="server" Text="IDLabel" Visible="false"></asp:Label>
                                 <asp:Label ID="GUIDLabel" runat="server" Visible="false" ></asp:Label>
                               <asp:Label ID="ResultLabel" runat="server" ></asp:Label>
                            

                            <div class="row">
                                  <!---1 -->
                                <div class="col-xs-12 col-md-12">
                     <div class="widget">
                                        <div class="widget-header bg-palegreen">
                                            <i class="widget-icon fa fa-arrow-down"></i>
                                            <span class="widget-caption" style="font-size:larger;">患者基本资料</span>
                                            <div class="widget-buttons">
                                               
                                              
                                                <a href="#" data-toggle="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </a>
                                               
                                            </div><!--Widget Buttons-->
                                        </div><!--Widget Header-->
                                        <div class="widget-body">
                                            <div style="width:80%;margin:auto;border:1px solid">
 
                                            <div class="col-lg-6 col-sm-6 col-xs-12"  style="padding:10px 10px; text-align:justify"> 姓名：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:TextBox ID="Patient" runat="server"></asp:TextBox>  
                                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="/*病人姓名必须填写*/" ControlToValidate="Patient"></asp:RequiredFieldValidator>
                                            </div>
                                               <div class="col-lg-6 col-sm-6 col-xs-12"style="padding:10px 10px;"> 编号：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="GUID" runat="server" Enabled="false" placeholder="自动生成，无需填写" ></asp:TextBox></div>     
                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:0px 10px;"> 性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                                     <asp:DropDownList ID="sex1" runat="server" >
                                                         <asp:ListItem  Value="0" >男</asp:ListItem>
                                                        <asp:ListItem Value="1">女</asp:ListItem>
                                                     </asp:DropDownList>
                                                 </div>
                                                 <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 出生日期： 
                                                     <asp:TextBox ID="Birthday" runat="server" onClick="WdatePicker()"></asp:TextBox> </div>
                                         
                                                  <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 就诊卡号1 ：<asp:TextBox ID="Num1" runat="server"></asp:TextBox></div>
                                             <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 就诊卡号2 ：<asp:TextBox ID="Num2" runat="server"></asp:TextBox></div>
                                             <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 联系电话1： <asp:TextBox ID="Phone1" runat="server"></asp:TextBox></div>
                                               <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 联系电话2 ：<asp:TextBox ID="Phone2" runat="server"></asp:TextBox></div>
                                             <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 受教育年限： <asp:TextBox ID="EducationYears" runat="server"></asp:TextBox></div>
                                               <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 利手： &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                    <asp:RadioButton ID="left" runat="server" GroupName="Hands"  Text="左手" />   
                                                    <asp:RadioButton ID="right" runat="server" GroupName="Hands" Checked="true" Text="右手" />
                                                   <asp:RadioButton ID="both" runat="server" GroupName="Hands" Text="均可" />

                                                   </div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:0px 10px;"> 婚姻状况： 
                                                <asp:RadioButton ID="marriage1" runat="server" GroupName="marriage"  Checked="true"  Text="未婚" />   
                                                    <asp:RadioButton ID="marriage2" runat="server" GroupName="marriage" Text="已婚" />
                                                   <asp:RadioButton ID="marriage3" runat="server" GroupName="marriage" Text="离异" />
                                                    <asp:RadioButton ID="marriage4" runat="server" GroupName="marriage" Text="丧偶" />
                                            </div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 家族史：&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="FMH" runat="server"></asp:TextBox></div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 民族：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Ethnicity" runat="server"></asp:TextBox></div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 职业：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Career" runat="server"></asp:TextBox></div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 个人经济收入： <asp:TextBox ID="AI" runat="server"></asp:TextBox> 元/年</div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 家庭经济收入： <asp:TextBox ID="AHI" runat="server"></asp:TextBox>元/年</div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 长大地：&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="GrowingPlace" runat="server"></asp:TextBox></div>
                                            <div class="col-lg-6 col-sm-6 col-xs-12" style="padding:10px 10px;"> 居住地：&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="Residence" runat="server"></asp:TextBox></div>
                                            <p>&nbsp;</p>
                                           <div style="text-align:center"> <asp:Button ID="Button1" runat="server" Text="保存"  class="btn btn-darkorange shiny" OnClick="Button1_Click"/></div> 
                                            <code>
                                                
                                            </code>

                                               </div>

                                        
                                         

                                        </div><!--Widget Body-->
                                    </div><!--Widget-->

                    </div>

                                <!---2 -->
                                    <div class="col-xs-12 col-md-12">
                                         <div class="widget">
                                        <div class="widget-header bg-lightred">
                                            <i class="widget-icon fa fa-arrow-down"></i>
                                                 <span class="widget-caption" style="font-size:larger;">患者疾病学指标 <asp:Label ID="DiseaseGUID" runat="server" Visible="false"></asp:Label></span>
                                            <div class="widget-buttons">
                                               
                                                <a href="#" data-toggle="collapse">
                                                    <i class="fa fa-minus"></i>
                                                </a>
                                               
                                            </div><!--Widget Buttons-->
                                        </div><!--Widget Header-->
                                        <div class="widget-body">

                                           <div style="width:80%;margin:auto;text-align:center">
                                             <table  class="table"> 
                                                <tr > 
                                                <th >疾病学诊断</th> 
                                                <th colspan="3"> <asp:TextBox ID="Diagnosis" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th> 
                                                </tr> 

                                                <tr > 
                                                <th>起病急缓</th> 
                                                <th ><asp:TextBox ID="AcuteOnset" runat="server" class="form-control"  ></asp:TextBox></th>
                                                <th>起病年龄</th>
                                                 <th><asp:TextBox ID="OnsetTime" runat="server" class="form-control"  ></asp:TextBox></th>
                                                </tr> 

                                                  <tr > 
                                                <th>病程</th> 
                                                <th ><asp:TextBox ID="DiseaseCourse" runat="server" class="form-control"  ></asp:TextBox></th>
                                                <th>疾病阶段</th>
                                                 <th><asp:TextBox ID="DiseaseStage" runat="server" class="form-control" ></asp:TextBox></th>
                                                </tr> 

                                                  <tr > 
                                                <th>未治疗时间</th> 
                                                <th ><asp:TextBox ID="UntreatedTime" runat="server" class="form-control" ></asp:TextBox></th>
                                                <th>发作次数</th>
                                                 <th> <asp:TextBox ID="Attacks" runat="server" class="form-control" ></asp:TextBox> </th>
                                                </tr> 

                                                  <tr > 
                                                <th>住院次数</th> 
                                                <th ><asp:TextBox ID="Hospitalizations" runat="server" class="form-control" ></asp:TextBox></th>
                                                <th></th>
                                                 <th></th>
                                                </tr> 

                                                <tr> 
                                                <th>用药情况</th> 
                                                <th colspan="3"><asp:TextBox ID="Medication" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th>

                                                </tr> 

                                                <!-----参会人员信息--->
                                                <tr class="alter"> 
                                                <th>身体疾病</th> 
                                                <th colspan="3"><asp:TextBox ID="BodyDisease" runat="server"  class="form-control" TextMode="MultiLine" ></asp:TextBox></th> 
                                               
                                                </tr> 

                                                 </table>
                                                
                                              <p>&nbsp;</p>
                                               <asp:Button ID="Button2" runat="server" Text="保存" OnClick="Button2_Click" class="btn btn-darkorange shiny" />

                                            <code>
                                          
                                            </code>

                                           </div>

                                        </div>
                                    </div>


                                        </div>




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
body,table{ 
font-size:12px; 
} 
table{ 
table-layout:fixed; 
empty-cells:show; 
border-collapse: collapse; 
margin:0 auto; 
} 
td{ 
height:40px; 

} 
.table{ 
border:1px solid #cad9ea; 
color:#666; 
} 
.table th { 
height:40px;
text-align:center; 
} 
.table td,.table th{ 
border:1px solid #cad9ea; 
padding:0 1em 0; 
} 
.table th p{ 
    line-height:18px;

   margin:auto;
}

</style> 