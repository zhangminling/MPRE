<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test2.aspx.cs" Inherits="Test2" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="always" name="referrer" />
    <title>阳性与阴性症状量表（PANSS）</title>
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
                  
                    radioClass: 'iradio_line-blue1',
                    insert: '<div class="icheck_line-icon"></div>'
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
                        <td colspan="3" id="banner">阳性与阴性症状量表（PANSS）</td>
                    </tr>
                </tbody>
            </table>

            <table width="960px" align="center" bgcolor="#FAFAFA">
                <tbody>
                    <tr>
                        <td id="info" colspan="6">使用说明：由Kay等于1987年编制，为他评量表。用来评定患者的精神病性症状。由包括7项阳性症状、7项阴性症状、16项一般病理症状及3项附加症状的四个分量表组成，共33项。按1-7级评分，后3个附加症状不记入总分。总分越高，反映病情越严重。该量表评估的精神病性症状比较全面，廓图可反映患者的整体临床相。但评定花费时间较长，大约30-50分钟，需系统培训。</td>
                    </tr>

                    <tr>
                        <td id="info2" colspan="6"></td>
                    </tr>
                    <tr><td></td></tr>
                     <tr bgcolor="#FAFAFA">
                        <td colspan="6">
                             <table  class="table"> 
                                                <tr > 
                                                <th  colspan="4">1) 阳性分项目 </th> 
                                                    <th >来源</th> 
                                                    <th >无</th> 
                                                    <th >极轻</th>
                                                    <th >轻度</th> 
                                                    <th >中度</th> 
                                                    <th >偏重</th>
                                                    <th >重度</th> 
                                                    <th >极重</th> 
                                              

                                                </tr> 
                               
                                 
                                                  <tr > 
                                                <th >P1</th> 
                                                <th colspan="3">妄想 </th> 
                                                    <th>I / H</th> 
                                                    <th ><asp:RadioButton ID="RadioButton2" runat="server"  GroupName="Option1" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton1" runat="server"  GroupName="Option1" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton3" runat="server"  GroupName="Option1" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton4" runat="server"  GroupName="Option1" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton5" runat="server"  GroupName="Option1" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton6" runat="server"  GroupName="Option1" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton7" runat="server"  GroupName="Option1" /></th> 
                                             
                                                </tr> 


                                     <tr > 
                                                <th >P2</th> 
                                                <th colspan="3">*概念紊乱 </th> 
                                                    <th>I </th> 
                                                    <th ><asp:RadioButton ID="RadioButton8" runat="server"  GroupName="Option2" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton9" runat="server"  GroupName="Option2" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton10" runat="server"  GroupName="Option2" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton18" runat="server"  GroupName="Option2" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton19" runat="server"  GroupName="Option2" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton20" runat="server"  GroupName="Option2" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton28" runat="server"  GroupName="Option2" /></th> 
                                             
                                                </tr> 


                                  <tr > 
                                                <th >P3</th> 
                                                <th colspan="3">*幻觉行为 </th> 
                                                    <th>I / H</th> 
                                                    <th ><asp:RadioButton ID="RadioButton29" runat="server"  GroupName="Option3" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton30" runat="server"  GroupName="Option3" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton35" runat="server"  GroupName="Option3" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton36" runat="server"  GroupName="Option3" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton37" runat="server"  GroupName="Option3" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton38" runat="server"  GroupName="Option3" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton39" runat="server"  GroupName="Option3" /></th> 
                                             
                                                </tr> 
                                  <tr > 
                                                <th >P4</th> 
                                                <th colspan="3">*兴奋 </th> 
                                                    <th>I / H</th> 
                                                     <th ><asp:RadioButton ID="RadioButton40" runat="server"  GroupName="Option4" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton45" runat="server"  GroupName="Option4" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton46" runat="server"  GroupName="Option4" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton47" runat="server"  GroupName="Option4" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton48" runat="server"  GroupName="Option4" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton49" runat="server"  GroupName="Option4" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton50" runat="server"  GroupName="Option4" /></th> 
                                             
                                                </tr> 
                                  <tr > 
                                                <th >P5</th> 
                                                <th colspan="3">*夸大 </th> 
                                                    <th>I / H</th> 
                                                    <th ><asp:RadioButton ID="RadioButton51" runat="server"  GroupName="Option5" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton52" runat="server"  GroupName="Option5" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton53" runat="server"  GroupName="Option5" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton54" runat="server"  GroupName="Option5" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton55" runat="server"  GroupName="Option5" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton56" runat="server"  GroupName="Option5" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton57" runat="server"  GroupName="Option5" /></th> 
                                             
                                                </tr> 
                                  <tr > 
                                                <th >P6</th> 
                                                <th colspan="3">*猜疑/被害 </th> 
                                                    <th>I / H</th> 
                                                     <th ><asp:RadioButton ID="RadioButton58" runat="server"  GroupName="Option6" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton59" runat="server"  GroupName="Option6" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton60" runat="server"  GroupName="Option6" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton61" runat="server"  GroupName="Option6" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton62" runat="server"  GroupName="Option6" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton63" runat="server"  GroupName="Option6" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton64" runat="server"  GroupName="Option6" /></th> 
                                             
                                                </tr> 
                                  <tr > 
                                                <th >P7</th> 
                                                <th colspan="3">*敌对性 </th> 
                                                    <th>I / H</th> 
                                                    <th ><asp:RadioButton ID="RadioButton65" runat="server"  GroupName="Option7" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton66" runat="server"  GroupName="Option7" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton67" runat="server"  GroupName="Option7" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton68" runat="server"  GroupName="Option7" /></th> 
                                                    <th ><asp:RadioButton ID="RadioButton69" runat="server"  GroupName="Option7" /></th>
                                                     <th ><asp:RadioButton ID="RadioButton70" runat="server"  GroupName="Option7" /></th> 
                                                       <th ><asp:RadioButton ID="RadioButton71" runat="server"  GroupName="Option7" /></th> 
                                             
                                                </tr> 

                             </table>



                            </td></tr>

                   

                     <tr><td  colspan="6" ></td></tr>
            <tr>
                <td colspan="6" style="text-align:center" >
                    <asp:Button ID="Button1" runat="server" Text="提 交" CssClass="btn" OnClick="Button1_Click" />

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
<style type="text/css"> 
body,table{ 
font-size:12px; 
} 
.table{ 
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