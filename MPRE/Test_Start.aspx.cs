using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Test_Start : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Request.QueryString["ID"] != null)
            {
                using (SqlConnection conn = new DB().GetConnection())
                {
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandText = "select * from Patient where ID=@ID";
                    cmd.Parameters.AddWithValue("@ID", Request.QueryString["ID"].ToString());
                    conn.Open();
                    SqlDataReader rd = cmd.ExecuteReader();
                    if (rd.Read())
                    {
                        Patient.Text = rd["Patient"].ToString();
                        GUID.Text = rd["GUID"].ToString();
                        Sex.Text = rd["Sex"].ToString();
                        Birthday.Text = String.Format("{0:yyyy-MM-dd}", rd["Birthday"]);
                        Num1.Text = rd["Num1"].ToString();
                       
                        Phone1.Text = rd["Phone1"].ToString();
                    }
                }

            }

        

    }
}