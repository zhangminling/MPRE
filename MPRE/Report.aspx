<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="always" name="referrer" />
    <title>临床总体印象量表 CGI 报告单</title>
    <link href="./css/index.css" rel="stylesheet" type="text/css" />
    <link href="/skins/line/blue.css" rel="stylesheet" />
    <script src="./js/jquery.js"></script>
    <script src="./js/icheck.js?v=1.0.2"></script>
    <script src="./js/check.js"></script>
    <script>
        $(document).ready(function () {
            $('input').each(function () {
                var self = $(this),
                  label = self.next(),
                  label_text = label.text();

                label.remove();
                self.iCheck({
                    checkboxClass: 'icheckbox_line-blue',
                    radioClass: 'iradio_line-blue',
                    insert: '<div class="icheck_line-icon"></div>' + label_text
                });
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="T1" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="T2" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="T3" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="T4" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="GUID" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="TestName" runat="server" Text="" Visible="false"></asp:Label>
            <asp:Label ID="Instruction" runat="server" Text="" Visible="false"></asp:Label>
            <table cellspacing="0" cellpadding="0" align="center" width="960px">
                <tbody>
                    <tr>
                        <td colspan="3" id="banner">临床总体印象量表 CGI 报告单</td>
                    </tr>
                </tbody>
            </table>

            <table width="960px" align="center" bgcolor="#FAFAFA">
                <tbody>
                    <tr>
                        <td colspan="6"><br /></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            病人姓名：<asp:Label ID="Label1" runat="server" Text="范美孔"></asp:Label>
                        </td>
                        <td colspan="2">
                            性别：<asp:Label ID="Label2" runat="server" Text="女"></asp:Label>
                        </td>
                        <td colspan="2">
                            出生日期：<asp:Label ID="Label3" runat="server" Text="1983/2/12"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="2">
                            婚姻：<asp:Label ID="Label4" runat="server" Text="未婚"></asp:Label>
                        </td>
                        <td colspan="2">
                            来源：<asp:Label ID="Label5" runat="server" Text="12区"></asp:Label>
                        </td>
                        <td colspan="2">
                            职业：<asp:Label ID="Label6" runat="server" Text="职员"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="6"><br /></td>
                    </tr>
                    <tr>
                        <td colspan="6">一、测试说明</td>
                    </tr>
                    <tr>
                        <td id="info" colspan="6">临床总体印象量表：最初由WHO设计，美国国立精神卫生研究所于1976年加以修订，为他评量表。可用于评定接受任何精神科治疗和研究的对象。量表包括病情严重程度、疗效总评和疗效指数3项。第一项为横断面评估，第二项为与基线情况比较的纵向评估，均采用0~7级评分。疗效指数=疗效分/副作用分。疗效分和副作用分为1~4级评分。在药理学研究中，疗效指数1.0以上者所研究的药物方有价值。</td>
                    </tr>

                    <%--<tr>
                        <td id="info2" colspan="6"></td>
                    </tr>--%>
                    <tr>
                        <td colspan="6"><br /></td>
                    </tr>
                    <tr>
                        <td colspan="6">二、测试情况</td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            时间：<asp:Label ID="Label7" runat="server" Text="2016/10/7"></asp:Label>
                        </td>
                        <td colspan="2">
                            地点：<asp:Label ID="Label8" runat="server" Text="医院"></asp:Label>
                        </td>
                        
                    </tr>
                    <tr>
                        <td colspan="6"><br /></td>
                    </tr>
                    <tr>
                        <td colspan="6">三、分数</td>
                    </tr>
                    <tr>
                    <td colspan="6">
                    <table cellspacing="0" cellpadding="0" align="center" width="960px">
                            <tbody>
                                <tr>
                                    <td colspan="6" align="center">临床总体印象量表 CGI 报告单</td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;background:#F0F7FF;">临床总体印象量表</td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;background:#F0F7FF;">原总分</td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;background:#F0F7FF;">量表分</td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">严重程度评分（CGI-S）</td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">5 </td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">15 </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">总体进步评分（CGI-I） </td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">6</td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;"> 25</td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">疗效指数 </td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;">1</td>
                                    <td colspan="2" align="center" style="border:1px solid  #808080;"> 1</td>
                                </tr>
                            </tbody>
                        </table>

                    </td>
                    </tr>
                    <tr>
                        <td colspan="6"><br /></td>
                    </tr>
                    <tr>
                        <td colspan="6">四、结果解析</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <p>&nbsp;&nbsp;根据对此类病人的经验，认为该患者在这类精神病中的严重程度为病情极轻，与基线相比改善程度为进步明显，该患者疗效明显进步，全部症状近于完全缓解。</p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6"><br /></td>
                    </tr>
                    <tr>
                        <td colspan="6">五、补充说明</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" Columns="100" Rows="8"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="6"></td>
                    </tr>
                    

                    



            <tr>
                <td colspan="6">
                    <asp:Button ID="Button1" runat="server" Text="保 存" CssClass="btn" OnClick="Button1_Click" />

                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <br />
                    <br />

                </td>
            </tr>

            </tbody></table>
    
        </div>
    </form>
</body>
</html>
