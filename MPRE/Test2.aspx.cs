using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        GUID.Text = strGUID;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        

    }

    private void Add()
    {
        int i=0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into Report ( GUID) ");
            sb.Append(" values ( @GUID) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
            if(i==1)
            {
                Response.Write(" <script> alert(\"保存成功！\"); </script> ");
            }
        }
    }
}