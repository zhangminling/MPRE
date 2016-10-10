using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        GUID.Text = strGUID;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (RadioButton11.Checked)
        {
            T1.Text = RadioButton11.Text;
        }
        if (RadioButton12.Checked)
        {
            T1.Text = RadioButton12.Text;
        }
        if (RadioButton13.Checked)
        {
            T1.Text = RadioButton13.Text;
        }
        if (RadioButton14.Checked)
        {
            T1.Text = RadioButton14.Text;
        }
        if (RadioButton15.Checked)
        {
            T1.Text = RadioButton15.Text;
        }
        if (RadioButton16.Checked)
        {
            T1.Text = RadioButton16.Text;
        }
        if (RadioButton17.Checked)
        {
            T1.Text = RadioButton17.Text;
        }
        if (RadioButton21.Checked)
        {
            T2.Text = RadioButton21.Text;
        }
        if (RadioButton22.Checked)
        {
            T2.Text = RadioButton22.Text;
        }
        if (RadioButton23.Checked)
        {
            T2.Text = RadioButton23.Text;
        }
        if (RadioButton24.Checked)
        {
            T2.Text = RadioButton24.Text;
        }
        if (RadioButton25.Checked)
        {
            T2.Text = RadioButton25.Text;
        }
        if (RadioButton26.Checked)
        {
            T2.Text = RadioButton26.Text;
        }
        if (RadioButton27.Checked)
        {
            T2.Text = RadioButton27.Text;
        }
        if (RadioButton31.Checked)
        {
            T3.Text = RadioButton31.Text;
        }
        if (RadioButton32.Checked)
        {
            T3.Text = RadioButton32.Text;
        }
        if (RadioButton33.Checked)
        {
            T3.Text = RadioButton33.Text;
        }
        if (RadioButton34.Checked)
        {
            T3.Text = RadioButton34.Text;
        }
        if (RadioButton41.Checked)
        {
            T4.Text = RadioButton41.Text;
        }
        if (RadioButton42.Checked)
        {
            T4.Text = RadioButton42.Text;
        }
        if (RadioButton43.Checked)
        {
            T4.Text = RadioButton43.Text;
        }
        if (RadioButton44.Checked)
        {
            T4.Text = RadioButton44.Text;
        }
        Add();


    }

    private void Add()
    {
        int i=1;
        //using (SqlConnection conn = new DB().GetConnection())
        //{
        //    StringBuilder sb = new StringBuilder("Insert into Report ( GUID) ");
        //    sb.Append(" values ( @GUID) ");
        //    SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
        //    cmd.Parameters.AddWithValue("@GUID", GUID.Text);
        //    conn.Open();
        //    i = cmd.ExecuteNonQuery();
            
        //}
        if(i==1)
        {
            Response.Write(" <script> alert(\"成功提交！\");;window.location='Report.aspx'; </script> ");
        }
    }
}