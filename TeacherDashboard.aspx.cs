using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;

using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Threading;

public partial class TeacherDashboard : System.Web.UI.Page
{
    public string TEmail,Role,Username;
     public string GlobalVariable1,GlobalVariable2,GlobalVariable3,GlobalVariable4,GlobalVariable5,GlobalVariable6,GlobalVariable7,GlobalVariable8;
     public string id1, id2, id3, id4, id5, id6, id7, id8;
     public TeacherDashboard()
     {
        // GlobalVariable = "GLOBAL_VARIABLE";
     }
     protected void Page_Load(object sender, EventArgs e)
     {
         if (!IsPostBack)
         {
             
            
                  TEmail = Request.QueryString["Email"];
                 Username= Request.QueryString["Username"];
                 Role = Request.QueryString["Roles"];

                 string Subject = Request.Form["Lsubjectname"];

                 string connectionString1 = null;
                 SqlConnection connection1;
                 connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                 connection1 = new SqlConnection(connectionString1);

                 SqlDataAdapter adap = new SqlDataAdapter("Select Subject ,Semester from Course_Detail3 where Teacher_Email=  '" + Request.QueryString["Email"] + "' ", connection1);
                 SqlCommandBuilder build = new SqlCommandBuilder(adap);
                 DataTable dt = new DataTable();
                 adap.Fill(dt);
                 for (int i = 0; i < dt.Rows.Count; i++)
                 {
                    

                         if (dt.Rows[i][1].ToString() == "1")
                         {
                             GlobalVariable1 = dt.Rows[i][0].ToString();

                             Session["GlobalVariable1"] = GlobalVariable1;
                             id1 = dt.Rows[i][1].ToString();

                         }
                         if (dt.Rows[i][1].ToString() == "2")
                         {
                             GlobalVariable2 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable2"] = GlobalVariable2;
                             id2 = dt.Rows[i][1].ToString();
                         }
                         if (dt.Rows[i][1].ToString() == "3")
                         {
                             GlobalVariable3 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable3"] = GlobalVariable3;
                             id3 = dt.Rows[i][1].ToString();
                         }
                         if (dt.Rows[i][1].ToString() == "4")
                         {
                             GlobalVariable4 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable4"] = GlobalVariable4;
                             id4 = dt.Rows[i][1].ToString();
                         }
                         if (dt.Rows[i][1].ToString() == "5")
                         {
                             GlobalVariable5 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable5"] = GlobalVariable5;
                             id5 = dt.Rows[i][1].ToString();
                         }
                         if (dt.Rows[i][1].ToString() == "6")
                         {
                             GlobalVariable6 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable6"] = GlobalVariable6;
                             id6 = dt.Rows[i][1].ToString();
                         }
                         if (dt.Rows[i][1].ToString() == "7")
                         {
                             GlobalVariable7 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable7"] = GlobalVariable7;
                             id7 = dt.Rows[i][1].ToString();
                         }
                         if (dt.Rows[i][1].ToString() == "8")
                         {
                             GlobalVariable8 = dt.Rows[i][0].ToString();
                             Session["GlobalVariable8"] = GlobalVariable8;
                             id8 = dt.Rows[i][1].ToString();
                         }
                    



                 



             }

         }

     }

   
    protected void Submit_Click(object sender, EventArgs e)
    {
        
        // string Username =name;

        //  string Email = "email".ToString();
        string Instructorname = Request.Form["Lusername"];
        string Department = Request.Form["Ldepartment"];
        string Subject = Request.Form["Lsubjectname"];
        string Semester = Request.Form["Lsemestername"];






        try
        {

            string connectionString = null;
            SqlConnection connection;
            SqlCommand cmd;

            string sql = null;



            sql = "insert into Course_Detail3(Instructor_Name,Department,Subject,Semester,Teacher_Email) values('" + Instructorname + "','" + Department + "' , '" + Subject + "', '" + Semester + "','" + Request.QueryString["Email"] + "')";
            connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
            connection = new SqlConnection(connectionString);

            connection.Open();
            cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = connection;
            cmd.ExecuteNonQuery();

            //  connection.Close();

            Response.Write("<script>alert('Course Created Successfully');</script>");



            string connectionString1 = null;
            SqlConnection connection1;
            connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
            connection1 = new SqlConnection(connectionString1);

            SqlDataAdapter adap = new SqlDataAdapter("Select Subject ,Semester from Course_Detail3 where Teacher_Email=  '" + Request.QueryString["Email"] + "' ", connection1);
            SqlCommandBuilder build = new SqlCommandBuilder(adap);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                if (dt.Rows[i][1].ToString() == "1")
                {
                    GlobalVariable1 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "2")
                {
                    GlobalVariable2 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "3")
                {
                    GlobalVariable3 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "4")
                {
                    GlobalVariable4 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "5")
                {
                    GlobalVariable5 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "6")
                {
                    GlobalVariable6 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "7")
                {
                    GlobalVariable7 = dt.Rows[i][0].ToString();

                }
                if (dt.Rows[i][1].ToString() == "8")
                {
                    GlobalVariable8 = dt.Rows[i][0].ToString();

                }
                    
               

            }
        }
        catch (Exception ex)
        {
            throw;
        }
        

       
    }


   
   
       
   

    


      


    
}