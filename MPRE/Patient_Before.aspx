﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Patient_Before.aspx.cs" Inherits="Patient_Before" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <div id="CurrentPosition">当前位置：<a href="#">以往病人列表</a> >>  </div>
         <div class="page-body">
                <div class="row">
                    <div class="col-xs-12 col-md-12">
                        <div class="widget">
                            <div class="widget-header ">
                                <span class="widget-caption">以往病人列表</span>
                            </div>
                            <div class="widget-body">
                                       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
                                <div id="Man_Nav">
                                    <div class="form-group col-xs-3 col-md-3">
                                        <span class="input-icon">
                                            <asp:TextBox ID="SearchTB" runat="server" placeholder="查询病人" class="form-control input-sm"></asp:TextBox>
                                            <i class="glyphicon glyphicon-search danger circular"></i>
                                        </span>
                                    </div>
                                    <asp:Button ID="SearchBtn" runat="server" Text="搜索" class="btn btn-info"
                                        OnClick="SearchBtn_Click" />&nbsp;&nbsp;
    
                          
                                                                    &nbsp;&nbsp;
                                    <asp:DropDownList ID="OrderDDL" runat="server"
                                        OnSelectedIndexChanged="OrderDDL_SelectedIndexChanged" AutoPostBack="True">
                                        <asp:ListItem Value=" Order by ID Desc">默认排序</asp:ListItem>
                                        <asp:ListItem Value=" Order by CDT Desc">最新记录</asp:ListItem>
                                        <asp:ListItem Value=" Order by ID Asc">ID从小到大</asp:ListItem>                         
                                    </asp:DropDownList>
                                </div>
                                <br />
                                </ContentTemplate></asp:UpdatePanel>
                                  <div class=" col-xs-10 col-md-10">
                                    <asp:Button ID="DelBtn" runat="server" Text="恢复病人资料" class="btn btn-warning"
                                         OnClick="DelBtn_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
                                </div>

                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                <div style="margin-top: 60px;"></div>
                                <div class=" col-xs-12 col-md-12">
                                    <asp:CheckBox ID="SelectAllCheckBox" runat="server" Text=" 全选 " AutoPostBack="true" OnCheckedChanged="SelectAllCheckBox_CheckedChanged" />
                                    &nbsp;&nbsp;                        
                                    <div style="float: right;">
                                        总共：<asp:Label ID="Label1" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>
                                        条记录，每页显示：<asp:DropDownList ID="PageSizeDDL" runat="server" AutoPostBack="true" Font-Bold="true"
                                            OnSelectedIndexChanged="PageSizeDDL_SelectedIndexChanged" ForeColor="#5D7B9D">
                                            <asp:ListItem Value="5">5</asp:ListItem>
                                            <asp:ListItem Value="10">10</asp:ListItem>
                                            <asp:ListItem Value="20">20</asp:ListItem>
                                            <asp:ListItem Value="50" Selected="True">50</asp:ListItem>
                                            <asp:ListItem Value="100">100</asp:ListItem>
                                            <asp:ListItem Value="200">200</asp:ListItem>
                                        </asp:DropDownList>
                                        条记录，共<asp:Label ID="Label2" runat="server" ForeColor="#5D7B9D" Font-Bold="true"></asp:Label>页
                                    </div>
                                </div>
                                <br />
                                <div id="RightContent">
                                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="ID" AutoGenerateColumns="false" class="table table-striped table-bordered table-hover"
                                        GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%">
                                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <Columns>
                                            <asp:BoundField DataField="Orders" HeaderText="排序" ItemStyle-Width="30" Visible="false" />
                                            <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="center" />
                                                <HeaderStyle Width="30px" />
                                            </asp:TemplateField>
                                            <asp:TemplateField>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="ChechBox1" runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle Width="30px" HorizontalAlign="Left" />
                                            </asp:TemplateField>
                                            <asp:HyperLinkField DataNavigateUrlFields="ID"
                                                DataNavigateUrlFormatString="Patient_Info.aspx?ID={0}" DataTextField="Patient"
                                                HeaderText="患者姓名" ItemStyle-Width="100" HeaderStyle-HorizontalAlign="Left" ItemStyle-HorizontalAlign="Left" Target="_blank"></asp:HyperLinkField>
                                            <asp:BoundField DataField="Sex" HeaderText="性别" />
                                   
                                            <asp:BoundField DataField="Num1" HeaderText="就诊卡号1"  />                                        
                                            <asp:BoundField DataField="Phone1" HeaderText="联系电话"  />
                                            <asp:BoundField DataField="Marriage" HeaderText="婚姻状况"  />
                                            <asp:BoundField DataField="CDT" HeaderText=" 日期 " DataFormatString="{0:yy-MM-dd}"  />
                                            <asp:BoundField DataField="Doctor" HeaderText="就诊医生"  />
                                            
                                        </Columns>
                                    </asp:GridView>
                                    <br />
                                    <asp:Label ID="TestLabel" runat="server" Text="" Visible="true"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <webdiyer:AspNetPager CssClass="pages" class="pagination" CurrentPageButtonClass="cpb" AlwaysShow="true" ID="AspNetPager1" runat="server" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页" OnPageChanged="AspNetPager1_PageChanged" LayoutType="Div">
                                    </webdiyer:AspNetPager>
                                </div>

                                         </ContentTemplate>
    </asp:UpdatePanel>








                                </div>
                        </div>
                    </div>
                </div>
            </div>




</asp:Content>

