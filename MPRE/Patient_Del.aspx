<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Patient_Del.aspx.cs" Inherits="Patient_Del" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Label ID="IDSLabel" runat="server" Text="" Visible="false"></asp:Label>
    <asp:Label ID="length" runat="server"></asp:Label>
    <div id="CurrentPosition">
        当前位置：<a href="Dashboard.aspx">后台首页</a> >> <a href="#">删除病人</a>
    </div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <p>&nbsp;</p>
            <h4 style="color: red;">您确定要删除以下病人吗？</h4>
            <p>&nbsp;</p>
            <div>
                <asp:Button ID="Button1" runat="server" Text="确定移动"
                    class="btn btn-warning" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button2" runat="server" Text="返回" class="btn btn-default" OnClick="Button2_Click" />
            </div>
            <p>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="ResultLabel" runat="server" Font-Bold="True"></asp:Label><a href="Patient_Before.aspx"><asp:Label ID="Label1" runat="server"  Font-Bold="True" ForeColor="red" Text="→查看以往病人" Visible="false"></asp:Label></a>
            </p>
            <div class="col-lg-11 col-sm-15 col-xs-15">
                <div class="row">
                    <div class="col-lg-15">
                        <div class="widget">
                            <div class="widget-header ">
                                <span class="widget-caption">移至回收站</span>
                            </div>
                            <!--Widget Header-->
                            <div class="widget-body">
                                <div class="widget-main no-padding">
                                    <div id="RightContent">
                                        <asp:GridView ID="GridView1" DataKeyNames="ID" runat="server" AutoGenerateColumns="False" HeaderStyle-Height="24px" class="table table-striped table-bordered table-hover"
                                            GridLines="Horizontal" Style="text-align: center;" ForeColor="#333333" HeaderStyle-HorizontalAlign="Center" Width="99%">
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="30px" HorizontalAlign="Center" />
                                            <HeaderStyle HorizontalAlign="Center" />
                                            <Columns>
                                                <asp:TemplateField HeaderText="序" HeaderStyle-HorizontalAlign="Center">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblNo" runat="server" Text='<%# Container.DataItemIndex+1 %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <ItemStyle Width="30px" HorizontalAlign="center" />
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
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

