<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta content="always" name="referrer" />
    <title>临床总体印象量表 CGI 在线</title>
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
                        <td colspan="3" id="banner">临床总体印象量表 CGI 在线测试</td>
                    </tr>
                </tbody>
            </table>

            <table width="960px" align="center" bgcolor="#FAFAFA">
                <tbody>
                    <tr>
                        <td id="info" colspan="6">使用说明：最初由WHO设计，美国国立精神卫生研究所于1976年加以修订，为他评量表。可用于评定接受任何精神科治疗和研究的对象。量表包括病情严重程度、疗效总评和疗效指数3项。第一项为横断面评估，第二项为与基线情况比较的纵向评估，均采用0~7级评分。疗效指数=疗效分/副作用分。疗效分和副作用分为1~4级评分。在药理学研究中，疗效指数1.0以上者所研究的药物方有价值。</td>
                    </tr>

                    <tr>
                        <td id="info2" colspan="6"></td>
                    </tr>

                    <tr bgcolor="#FAFAFA">
                        <td colspan="6">
                            <table width="98%" cellpadding="0" cellspacing="0" align="center">
                                <tbody>
                                    <tr>
                                        <td colspan="6" style="padding-bottom: 10px;padding-top:15px;">
                                            <b>
                                                第一题、临床总体印象量表－严重程度评分（CGI-S）根据您对此类病人的经验，您认为该患者在这类精神病中的严重程度如何？[单选题]
                                            </b>
                                        </td>
                                    </tr>

                                    <tr>

                                        <td>
                                           
                                            <asp:RadioButton ID="RadioButton11" runat="server" text="A、正常，无病" GroupName="Option1" />
                                            <br />
                                        </td>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton12" runat="server" text="B、病情极轻" GroupName="Option1" />
                                            <br />
                                        </td>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton13" runat="server" text="C、轻度有病" GroupName="Option1" />
                                            <br />
                                        </td>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton14" runat="server" text="D、中度有病" GroupName="Option1" />
                                            <br />
                                        </td>


                                    </tr>

                                    <tr>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton15" runat="server" text="E、明显有病" GroupName="Option1" />
                                            <br />
                                        </td>
                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton16" runat="server" text="F、严重有病" GroupName="Option1" />
                                            <br />
                                        </td>
                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton17" runat="server" text="G、病情极重" GroupName="Option1" />
                                            <br />
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>

                    <tr bgcolor="#FAFAFA">
                        <td colspan="6">
                            <table width="98%" cellpadding="0" cellspacing="0" align="center">
                                <tbody>
                                    <tr>
                                        <td colspan="6" style="padding-bottom: 10px;">
                                            <b>第二题、临床总体印象量表－总体进步评分（CGI-I）根据您对此类病人的经验，您认为该患者与基线相比改善程度如何？[单选题]
                                            </b>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>

                                            
                                            <asp:RadioButton ID="RadioButton21" runat="server" text="A、进步非常明显" GroupName="Option2" />
                                            <br />
                                        </td>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton22" runat="server" text="B、进步明显" GroupName="Option2" />
                                            <br />
                                        </td>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton23" runat="server" text="C、稍有进步" GroupName="Option2" />
                                            <br />
                                        </td>

                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton24" runat="server" text="D、无变化" GroupName="Option2" />
                                            <br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton25" runat="server" text="E、稍有恶化" GroupName="Option2" />
                                            <br />
                                        </td>
                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton26" runat="server" text="F、明显恶化" GroupName="Option2" />
                                            <br />
                                        </td>
                                        <td>
                                            
                                            <asp:RadioButton ID="RadioButton27" runat="server" text="G、恶化非常明显" GroupName="Option2" />
                                            <br />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            </td>
                     </tr>



                    <tr bgcolor="#FAFAFA">
                        <td colspan="6">
                            <table width="98%" cellpadding="0" cellspacing="0" align="center">
                                <tbody>
                                    <tr>
                                        <td colspan="6" style="padding-bottom: 10px;"><b>第三题、临床总体印象量表－疗效指数根据您对此类病人的经验，您认为该患者疗效如何？[单选题]</b></td>
                                    </tr>
                                    <tr>
                                        <td>

                                            
                                            <asp:RadioButton ID="RadioButton31" runat="server" text="A、明显进步，全部症状近于完全缓解" GroupName="Option3" />
                                            <br />
                                        </td>

                                        <td>

                                            <asp:RadioButton ID="RadioButton32" runat="server" text="B、中度改善，肯定有进步，症状部分缓解" GroupName="Option3" />
                                            <br />
                                        </td>

                                        <td>
   
                                            <asp:RadioButton ID="RadioButton33" runat="server" text="C、稍有进步，但这种进步不能改变病人受照顾的状态" GroupName="Option3" />
                                            <br />
                                        </td>

                                        <td>

                                            <asp:RadioButton ID="RadioButton34" runat="server" text="D、无变化或恶化" GroupName="Option3" />
                                            <br />
                                        </td>


                                    </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>

            <tr bgcolor="#FAFAFA">
                <td colspan="6">
                    <table width="98%" cellpadding="0" cellspacing="0" align="center">
                        <tbody>
                            <tr>
                                <td colspan="6" style="padding-bottom: 10px;">
                                    <b>第四题、根据您对此类病人的经验，您认为该患者治疗副作用如何？[单选题]
                                    </b>
                                </td>
                            </tr>
                            <tr>
                                <td>


                                    <asp:RadioButton ID="RadioButton41" runat="server" text="A、无" GroupName="Option4" /><br />
                                </td>

                                <td>

                                    <asp:RadioButton ID="RadioButton42" runat="server" text="B、轻度" GroupName="Option4" />
                                    <br />
                                </td>

                                <td>
                                    
                                    
                                    <asp:RadioButton ID="RadioButton43" runat="server" text="C、中度" GroupName="Option4" />
                                    <br />
                                </td>

                                <td>
                                    
                                    <asp:RadioButton ID="RadioButton44" runat="server" text="D、严重" GroupName="Option4" />
                                    <br />
                                </td>
                            </tr>
                    </tbody>
                </table>
            </td>
        </tr>


            <tr>
                <td colspan="6">
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
