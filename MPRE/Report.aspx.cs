using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        System.Guid guid = System.Guid.NewGuid();
        string strGUID = System.Guid.NewGuid().ToString();
        GUID.Text = strGUID;

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        Response.Write(" <script> alert(\"保存成功！\"); </script> ");
    }
}