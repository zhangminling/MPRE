<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="CurrentPosition">当前位置：<a href="#">首页</a></div>
    <p>&nbsp;</p>
    <!-- Page Body -->
    <div class="page-body">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="databox radius-bordered databox-shadowed databox-graded">
                            <div class="databox-left bg-themesecondary">
                                <div class="databox-piechart">
                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="50" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="rgba(255,255,255,0.1)"><span class="white font-90"></span></div>
                                </div>
                            </div>
                            <div class="databox-right">
                                <span class="databox-number themesecondary">病人总数：14</span>
                                <div class="databox-text darkgray"><a href="Patient_Info.aspx">新增</a>丨<a href="Patient_List.aspx">选择</a></div>
                                <div class="databox-stat themesecondary radius-bordered">
                                    <i class="stat-icon icon-lg fa fa-tasks"></i>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="widget">
                                <div class="widget-header ">
                                    <span class="widget-caption">最近病人列表</span>
                                </div>
                                <div class="widget-body">
                                    <table class="table table-striped table-bordered table-hover" id="simpledatatable">
                                        <thead>
                                            <tr>
                                                <th>
                                                    姓名
                                                </th>
                                                <th>
                                                    性别
                                                </th>
                                                <th>
                                                    出生年月
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    shuxer
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12 Jan 2012
                                                </td>
                                            </tr>
                                            <tr>
          
                                                <td>
                                                    looper
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2011
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    userwow
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    user1wow
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr class="odd gradeX">
                                                <td>
                                                    restest
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    foopl
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    weep
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    coop
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    pppol
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>

                                                <td>
                                                    test
                                                </td>
                                                <td>
                                                   男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            
                               
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="databox radius-bordered databox-shadowed databox-graded">
                            <div class="databox-left bg-themethirdcolor">
                                <div class="databox-piechart">
                                    <div data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="15" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="rgba(255,255,255,0.2)"><span class="white font-90"></span></div>
                                </div>
                            </div>
                            <div class="databox-right">
                                <span class="databox-number themethirdcolor">测试总数：26</span>
                                <div class="databox-text darkgray">Test</div>
                                <div class="databox-stat themethirdcolor radius-bordered">
                                    <i class="stat-icon  icon-lg fa fa-envelope-o"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="widget">
                                <div class="widget-header ">
                                    <span class="widget-caption">测试列表</span>
                                </div>
                                <div class="widget-body">
                                    <table class="table table-striped table-bordered table-hover" id="simpledatatable">
                                        <thead>
                                            <tr>
                                                <th>
                                                    姓名
                                                </th>
                                                <th>
                                                    性别
                                                </th>
                                                <th>
                                                    出生年月
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    shuxer
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12 Jan 2012
                                                </td>
                                            </tr>
                                            <tr>
          
                                                <td>
                                                    looper
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2011
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    userwow
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    user1wow
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr class="odd gradeX">
                                                <td>
                                                    restest
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    foopl
                                                </td>
                                                <td>
                                                   男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    weep
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    coop
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    pppol
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>

                                                <td>
                                                    test
                                                </td>
                                                <td>
                                                   男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            
                               
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                        <div class="databox radius-bordered databox-shadowed databox-graded">
                            <div class="databox-left bg-themeprimary">
                                <div class="databox-piechart">
                                    <div id="users-pie" data-toggle="easypiechart" class="easyPieChart" data-barcolor="#fff" data-linecap="butt" data-percent="76" data-animate="500" data-linewidth="3" data-size="47" data-trackcolor="rgba(255,255,255,0.1)"><span class="white font-90"></span></div>
                                </div>
                            </div>
                            <div class="databox-right">
                                <span class="databox-number themeprimary">报告单总数：98</span>
                                <div class="databox-text darkgray">Report</div>
                                <div class="databox-state bg-themeprimary">
                                    <i class="fa fa-check"></i>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        <div class="col-xs-12 col-md-12">
                            <div class="widget">
                                <div class="widget-header ">
                                    <span class="widget-caption">最近报告单列表</span>
                                </div>
                                <div class="widget-body">
                                    <table class="table table-striped table-bordered table-hover" id="simpledatatable">
                                        <thead>
                                            <tr>
                                                <th>
                                                    姓名
                                                </th>
                                                <th>
                                                    性别
                                                </th>
                                                <th>
                                                    出生年月
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td>
                                                    shuxer
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12 Jan 2012
                                                </td>
                                            </tr>
                                            <tr>
          
                                                <td>
                                                    looper
                                                </td>
                                                <td>
                                                   男
                                                </td>
                                                <td class="center ">
                                                    12.12.2011
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    userwow
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    user1wow
                                                </td>
                                                <td>
                                                   男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr class="odd gradeX">
                                                <td>
                                                    restest
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    12.12.2012
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    foopl
                                                </td>
                                                <td>
                                                   男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    weep
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    coop
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    pppol
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            <tr>

                                                <td>
                                                    test
                                                </td>
                                                <td>
                                                    男
                                                </td>
                                                <td class="center ">
                                                    19.11.2010
                                                </td>
                                            </tr>
                                            
                               
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
