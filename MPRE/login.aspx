<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>多维度精神病康复评估系统--登录</title>
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

    <!--[if lte IE 8]>
        <script>
            alert("为获得最佳效果，建议使用IE9、Chrome10或更高版本的浏览器。");
        </script>
    <![endif]-->

    <!--Skin Script: Place this script in head to load scripts for skins and rtl support-->
    <script type="text/javascript" src="assets/js/skins.min.js"></script>
    <script type="text/javascript">
        function reloadcode() {
            document.getElementById('safecode').src = 'CreatePic.aspx?' + Math.random();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div class="login-container animated fadeInDown">
        <div class="loginbox bg-white">
            <div style="padding-top:20px;"></div>
            <div class="loginbox-title">多维度精神病康复评估系统</div>
            <div class="loginbox-social">
                <div class="social-title ">登录页</div>
            </div>
            <div class="loginbox-textbox"><asp:Label ID="ErrorLabel" runat="server" Text="" ForeColor="Red" Font-Bold="true"></asp:Label></div>
            <div class="loginbox-textbox">
                <asp:TextBox ID="UserName" placeholder="请输入用户名" runat="server" MaxLength="30" class="form-control"></asp:TextBox>
            </div>
            <div class="loginbox-textbox">
                <asp:TextBox ID="Password" placeholder="请输入密码" runat="server" MaxLength="30" TextMode="Password" class="form-control"></asp:TextBox>
            </div>
            <div class="loginbox-textbox">
                <asp:TextBox ID="ValidateCode" runat="server" placeholder="验证码" MaxLength="30" class="form-control"></asp:TextBox>
            </div>
            <div class="loginbox-textbox">                 
                <a href="javascript:reloadcode();" title="更换一张">
                         <img src="CreatePic.aspx" id="safecode"  alt="更换一张验证"  width="80"/>
                    换一张</a>
            </div>
            <div class="loginbox-submit">
                <asp:Button ID="Button1" runat="server" Text=" 登录 "  class="btn btn-primary btn-block" onclick="Button1_Click" />
            </div>
        </div>
    </div>

    <!--Basic Scripts-->
    <script src="assets/js/jquery-2.0.3.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>

    <!--Beyond Scripts-->
    <script src="assets/js/beyond.js"></script>
    </form>
</body>
</html>
