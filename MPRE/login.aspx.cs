using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //using (SqlConnection conn = new DB().GetConnection())
        //{
        //    string sql = "select CongealDate from [Users] where UserName = @UserName2";
        //    SqlCommand cmd = new SqlCommand(sql, conn);
        //    cmd.Parameters.AddWithValue("@UserName2", UserName.Text);
        //    conn.Open();
        //    SqlDataReader rd = cmd.ExecuteReader();
        //    if (rd.Read())
        //    {
        //        //判断用户输入验证码是否相等
                if (Session["CheckCode"].ToString().ToLower() == ValidateCode.Text.ToLower().Trim())
                {
                    if (UserName.Text=="mpre"&&Password.Text=="123m")
                    {
                        Util.ShowMessage("登录成功！", "Dashboard.aspx");
                    }
                    else
                    {
                        ErrorLabel.Text = "用户名或密码错误！";
                    }
                }
                else
                {
                    ErrorLabel.Text = "验证码输入错误！";
                }

        //    }

        //}

    }
}