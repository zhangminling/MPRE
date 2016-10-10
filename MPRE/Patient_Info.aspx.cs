using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
using System.IO;

public partial class Patient_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Patient.Focus();

            //if (Session["UserID"] == null)
            //{
            //    Util.ShowMessage("用户登录超时，请重新登录！", "Login.aspx");
            //}
            //else
            //{
                
               //string UserID = Session["UserID"].ToString();
               //string UserDict = "~/Users/" + UserID;
               // string FullPath = UserDict + "/Uploads";
               //if (!Directory.Exists(Server.MapPath(UserDict)))
               // {
               //    Directory.CreateDirectory(UserDict);
               //}

                

                if (Request.QueryString["ID"] != null)
                {
                    // 修改文章
                    IDLabel.Text = Request.QueryString["ID"].ToString();
                    MyInitForUpdate();

                    using (SqlConnection conn = new DB().GetConnection())
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandText = "select * from Disease where Patient_GUID=@Patient_GUID";
                        cmd.Parameters.AddWithValue("@Patient_GUID", GUID.Text);
                        conn.Open();
                        SqlDataReader rd = cmd.ExecuteReader();
                        if (rd.Read()) {
                            MyInitForUpdate2();
                        }
                    }

                }
                else
                {
                    // 新增文章                
                    System.Guid guid = System.Guid.NewGuid();
                    string strGUID = System.Guid.NewGuid().ToString();
                    GUID.Text = strGUID;
                    //RandomID.Text = "";//第一次加载页面，为空
                }
            }

        //}

    }
    //更新操作
    private void MyInitForUpdate()
    {
        string Handness = "";
        string Marriage = "";
        int  Valid =1;
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Patient where ID=@ID";
            cmd.Parameters.AddWithValue("@ID", IDLabel.Text);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read()) {
                Patient.Text = rd["Patient"].ToString();
                GUID.Text = rd["GUID"].ToString();
                GUIDLabel.Text = rd["GUID"].ToString();
              //  Sex.Text = rd["Sex"].ToString();
                Birthday.Text = String.Format("{0:yyyy-MM-dd}", rd["Birthday"]);
                Num1.Text = rd["Num1"].ToString();
                Num2.Text = rd["Num2"].ToString();
                Phone1.Text = rd["Phone1"].ToString();
                Phone2.Text = rd["Phone2"].ToString();
                EducationYears.Text = rd["EducationYears"].ToString();
             //   Marriage.Text = rd["Marriage"].ToString();
                FMH.Text = rd["FMH"].ToString();
                Ethnicity.Text = rd["Ethnicity"].ToString();
                Career.Text = rd["Career"].ToString();
                AI.Text = rd["AI"].ToString();
                AHI.Text = rd["AHI"].ToString();
                GrowingPlace.Text = rd["GrowingPlace"].ToString();
                Residence.Text = rd["Residence"].ToString();
                Valid = Convert.ToInt32(rd["Valid"]);


                 Handness = rd["Handedness"].ToString().Trim();          
                if (  Handness == left.Text)
                {
                    left.Checked=true ;
                }
                if ( Handness == right.Text)
                {
                    right.Checked = true;
                }
                if (Handness == both.Text)
                {
                    both.Checked = true;
                }


                Marriage = rd["Marriage"].ToString().Trim();
                if (Marriage == marriage1.Text)
                {
                    marriage1.Checked = true;
                }
                if (Marriage == marriage2.Text)
                {
                    marriage2.Checked = true;
                }
                if (Marriage == marriage3.Text)
                {
                    marriage3.Checked = true;
                }
                if (Marriage == marriage4.Text)
                {
                    marriage4.Checked = true;
                }

                string sex0 = rd["Sex"].ToString().Trim();

                if (sex1.Items.FindByText(sex0) != null)
                {
                    sex1.ClearSelection();
                    sex1.Items.FindByText(sex0).Selected = true;
                }

                
            }
            if (Valid == 0) {
                Button1.Visible = false;
                Button2.Visible = false;
            }

        }
    }



  
    //插入操作，插入到Patients表里
    private int DoInsert(int finished)
    {
        int i = 0;

        string Handness = "";
        if (left.Checked)
        {
            Handness = left.Text;
        }
        if (right.Checked)
        {
            Handness = right.Text;
        }
        if (both.Checked)
        {
            Handness = both.Text;
        }

        string Marriage = "";
        if (marriage1.Checked)
        {
            Marriage = marriage1.Text;
        }
        if (marriage2.Checked)
        {
            Marriage = marriage2.Text;
        }
        if (marriage3.Checked)
        {
            Marriage = marriage3.Text;
        }
        if (marriage4.Checked)
        {
            Marriage = marriage4.Text;
        }

        string Sex0 = "";
        Sex0 = sex1.SelectedItem.Text;

        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into Patient ( Patient,GUID,Sex,Birthday,Num1,Num2,Phone1,Phone2,EducationYears,Handedness,Marriage,FMH,Ethnicity,Career,AI,AHI,GrowingPlace,Residence,CDT) ");
            sb.Append(" values ( @Patient,@GUID,@Sex,@Birthday,@Num1,@Num2,@Phone1,@Phone2,@EducationYears,@Handedness,@Marriage,@FMH,@Ethnicity,@Career,@AI,@AHI,@GrowingPlace,@Residence,@CDT) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@Patient", Patient.Text);
            cmd.Parameters.AddWithValue("@GUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Sex", Sex0);
            cmd.Parameters.AddWithValue("@Birthday", Birthday.Text);
            cmd.Parameters.AddWithValue("@Num1", Num1.Text);
            cmd.Parameters.AddWithValue("@Num2", Num2.Text);
            cmd.Parameters.AddWithValue("@Phone1", Phone1.Text);
            cmd.Parameters.AddWithValue("@Phone2", Phone2.Text);
            cmd.Parameters.AddWithValue("@EducationYears", EducationYears.Text);
            cmd.Parameters.AddWithValue("@Handedness", Handness);
            cmd.Parameters.AddWithValue("@Marriage", Marriage);
            cmd.Parameters.AddWithValue("@FMH", FMH.Text);
            cmd.Parameters.AddWithValue("@Ethnicity", Ethnicity.Text);
            cmd.Parameters.AddWithValue("@Career", Career.Text);
            cmd.Parameters.AddWithValue("@AI", AI.Text);
            cmd.Parameters.AddWithValue("@AHI", AHI.Text);
            cmd.Parameters.AddWithValue("@GrowingPlace", GrowingPlace.Text);
            cmd.Parameters.AddWithValue("@Residence", Residence.Text);
            cmd.Parameters.AddWithValue("@CDT", DateTime.Now);


            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;
    }


    //更新病人基本资料操作
    private int DoUpdate(int finished)
    {
        string Handness = "";
        if (left.Checked)
        {
            Handness = left.Text;
        }
        if (right.Checked)
        {
            Handness = right.Text;
        }
        if (both.Checked)
        {
            Handness = both.Text;
        }

        string Marriage = "";
        if (marriage1.Checked)
        {
            Marriage = marriage1.Text;
        }
        if (marriage2.Checked)
        {
            Marriage = marriage2.Text;
        }
        if (marriage3.Checked)
        {
            Marriage = marriage3.Text;
        }
        if (marriage4.Checked)
        {
            Marriage = marriage4.Text;
        }

        string Sex0 = "";
        Sex0 = sex1.SelectedItem.Text;

        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Patient set  Patient=@Patient,Sex=@Sex,Birthday=@Birthday,Num1=@Num1,Num2=@Num2,Phone1=@Phone1,Phone2=@Phone2,EducationYears=@EducationYears,Handedness=@Handedness,");
            sb.Append("Marriage=@Marriage,FMH=@FMH,Ethnicity=@Ethnicity,Career=@Career,AI=@AI,AHI=@AHI,GrowingPlace=@GrowingPlace,Residence=@Residence where GUID=@GUID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@Patient", Patient.Text);
            cmd.Parameters.AddWithValue("@GUID", GUID.Text);
            cmd.Parameters.AddWithValue("@Sex", Sex0);
            cmd.Parameters.AddWithValue("@Birthday", Birthday.Text);
            cmd.Parameters.AddWithValue("@Num1", Num1.Text);
            cmd.Parameters.AddWithValue("@Num2", Num2.Text);
            cmd.Parameters.AddWithValue("@Phone1", Phone1.Text);
            cmd.Parameters.AddWithValue("@Phone2", Phone2.Text);
            cmd.Parameters.AddWithValue("@EducationYears", EducationYears.Text);
            cmd.Parameters.AddWithValue("@Handedness", Handness);
            cmd.Parameters.AddWithValue("@Marriage", Marriage);
            cmd.Parameters.AddWithValue("@FMH", FMH.Text);
            cmd.Parameters.AddWithValue("@Ethnicity", Ethnicity.Text);
            cmd.Parameters.AddWithValue("@Career", Career.Text);
            cmd.Parameters.AddWithValue("@AI", AI.Text);
            cmd.Parameters.AddWithValue("@AHI", AHI.Text);
            cmd.Parameters.AddWithValue("@GrowingPlace", GrowingPlace.Text);
            cmd.Parameters.AddWithValue("@Residence", Residence.Text);
          
            conn.Open();
            i = cmd.ExecuteNonQuery();
        }


        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "Update Disease set  Patient=@Patient where  Patient_GUID=@Patient_GUID";
            cmd.Parameters.AddWithValue("@Patient", Patient.Text);
            cmd.Parameters.AddWithValue("@Patient_GUID", GUID.Text);
            conn.Open();
            cmd.ExecuteNonQuery();
           
        }


        return i;


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = 0;
        if (String.IsNullOrEmpty(GUIDLabel.Text))
        {
            //System.Guid guid = System.Guid.NewGuid();
            //string strGUID = System.Guid.NewGuid().ToString();
            GUIDLabel.Text = GUID.Text;
            i = DoInsert(1);

        }
        else
        {
            i = DoUpdate(1);
        }

        if (i == 1)
        {
            ResultLabel.Text = "操作成功！";
            ResultLabel.ForeColor = System.Drawing.Color.Green;
            //Timer1.Enabled = true;            
        }
        else
        {
            ResultLabel.Text = "操作失败，请重试！";
            ResultLabel.ForeColor = System.Drawing.Color.Red;
        }
    }


    //  病人基本信息操作结束


    //病人疾病信息的操作

    // 疾病信息更新时读取操作
    private void MyInitForUpdate2()
    {
        using (SqlConnection conn = new DB().GetConnection())
        {
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandText = "select * from Disease where Patient_GUID=@Patient_GUID";
            cmd.Parameters.AddWithValue("@Patient_GUID", GUID.Text);
            conn.Open();
            SqlDataReader rd = cmd.ExecuteReader();
            if (rd.Read())
            {   DiseaseGUID.Text=rd["GUID"].ToString();
                Diagnosis.Text = rd["Diagnosis"].ToString();
                AcuteOnset.Text = rd["AcuteOnset"].ToString();
                OnsetTime.Text = String.Format("{0:yyyy-MM-dd}",  rd["OnsetTime"]);
                DiseaseCourse.Text = rd["DiseaseCourse"].ToString();
                DiseaseStage.Text = rd["DiseaseStage"].ToString();
                UntreatedTime.Text = rd["UntreatedTime"].ToString();
                Attacks.Text = rd["Attacks"].ToString();
                Hospitalizations.Text = rd["Hospitalizations"].ToString();
                Medication.Text = rd["Medication"].ToString();
                BodyDisease.Text = rd["BodyDisease"].ToString();
                
            }
        }
    }

    //插入操作，插入到Disease表里
    private int DoInsert2(int finished)
    {
        int i = 0;
        DiseaseGUID.Text=System.Guid.NewGuid().ToString();
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Insert into Disease ( Patient,GUID,Patient_GUID,Diagnosis,AcuteOnset,OnsetTime,DiseaseCourse,DiseaseStage,UntreatedTime,Attacks,Hospitalizations,Medication,BodyDisease) ");
            sb.Append(" values ( @Patient,@GUID,@Patient_GUID,@Diagnosis,@AcuteOnset,@OnsetTime,@DiseaseCourse,@DiseaseStage,@UntreatedTime,@Attacks,@Hospitalizations,@Medication,@BodyDisease) ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);

            cmd.Parameters.AddWithValue("@Patient", Patient.Text);
            cmd.Parameters.AddWithValue("@GUID", DiseaseGUID.Text);
            cmd.Parameters.AddWithValue("@Patient_GUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Diagnosis", Diagnosis.Text);
            cmd.Parameters.AddWithValue("@AcuteOnset", AcuteOnset.Text);
            cmd.Parameters.AddWithValue("@OnsetTime", OnsetTime.Text);
            cmd.Parameters.AddWithValue("@DiseaseCourse", DiseaseCourse.Text);
            cmd.Parameters.AddWithValue("@DiseaseStage", DiseaseStage.Text);
            cmd.Parameters.AddWithValue("@UntreatedTime", UntreatedTime.Text);
            cmd.Parameters.AddWithValue("@Attacks", Attacks.Text);   
            cmd.Parameters.AddWithValue("@Hospitalizations", Hospitalizations.Text);
            cmd.Parameters.AddWithValue("@Medication", Medication.Text);
            cmd.Parameters.AddWithValue("@BodyDisease", BodyDisease.Text);
            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;
    }


    //更新病人病情资料操作
    private int DoUpdate2(int finished)
    {
        int i = 0;
        using (SqlConnection conn = new DB().GetConnection())
        {
            StringBuilder sb = new StringBuilder("Update Disease set  Patient=@Patient,Diagnosis=@Diagnosis,AcuteOnset=@AcuteOnset,OnsetTime=@OnsetTime,DiseaseCourse=@DiseaseCourse,DiseaseStage=@DiseaseStage,UntreatedTime=@UntreatedTime,");
            sb.Append("Attacks=@Attacks,Hospitalizations=@Hospitalizations,Medication=@Medication,BodyDisease=@BodyDisease where Patient_GUID=@Patient_GUID ");
            SqlCommand cmd = new SqlCommand(sb.ToString(), conn);
            cmd.Parameters.AddWithValue("@Patient", Patient.Text);
            cmd.Parameters.AddWithValue("@Patient_GUID", GUIDLabel.Text);
            cmd.Parameters.AddWithValue("@Diagnosis", Diagnosis.Text);
            cmd.Parameters.AddWithValue("@AcuteOnset", AcuteOnset.Text);
            cmd.Parameters.AddWithValue("@OnsetTime", OnsetTime.Text);
            cmd.Parameters.AddWithValue("@DiseaseCourse", DiseaseCourse.Text);
            cmd.Parameters.AddWithValue("@DiseaseStage", DiseaseStage.Text);
            cmd.Parameters.AddWithValue("@UntreatedTime", UntreatedTime.Text);
            cmd.Parameters.AddWithValue("@Attacks", Attacks.Text);
            cmd.Parameters.AddWithValue("@Hospitalizations", Hospitalizations.Text);
            cmd.Parameters.AddWithValue("@Medication", Medication.Text);
            cmd.Parameters.AddWithValue("@BodyDisease", BodyDisease.Text);
   

            conn.Open();
            i = cmd.ExecuteNonQuery();
        }
        return i;


    }












    protected void Button2_Click(object sender, EventArgs e)
    {
        int i = 0;
        if (String.IsNullOrEmpty(GUIDLabel.Text))
        {
            ResultLabel.Text = "操作失败，没有该患者的基本信息！请保存新病人资料后再进行填写！";
            ResultLabel.ForeColor = System.Drawing.Color.Red;

        }
        else {
            if (String.IsNullOrEmpty(DiseaseGUID.Text))
            {
                i = DoInsert2(1);

            }
            else
            {
                i = DoUpdate2(1);
            }

            if (i == 1)
            {
                ResultLabel.Text = "操作成功！";
                ResultLabel.ForeColor = System.Drawing.Color.Green;
                //Timer1.Enabled = true;            
            }
            else
            {
                ResultLabel.Text = "操作失败，请重试！";
                ResultLabel.ForeColor = System.Drawing.Color.Red;
            }
        
        }

    }
}