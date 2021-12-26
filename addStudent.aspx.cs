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

public partial class addStudent : System.Web.UI.Page
{
   // public string GlobalVariable1, GlobalVariable2, GlobalVariable3, GlobalVariable4, GlobalVariable5, GlobalVariable6, GlobalVariable7, GlobalVariable8;
    public object GlobalVariable1, GlobalVariable2, GlobalVariable3, GlobalVariable4, GlobalVariable5, GlobalVariable6, GlobalVariable7, GlobalVariable8;
    string Courrseins, department, Subject, Semester,sem;
    int j = 0;
    public String[] s1 = new String[100];
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            
                GlobalVariable1 = Session["GlobalVariable1"];
                GlobalVariable2 = Session["GlobalVariable2"];
                GlobalVariable3 = Session["GlobalVariable3"];
                GlobalVariable4 = Session["GlobalVariable4"];

                GlobalVariable5 = Session["GlobalVariable5"];
                GlobalVariable6 = Session["GlobalVariable6"];
                GlobalVariable7 = Session["GlobalVariable7"];
                GlobalVariable8 = Session["GlobalVariable8"];




                string id = Request.QueryString["id"];

                try
                {

                    string connectionString1 = null;
                    SqlConnection connection1;
                    connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                    connection1 = new SqlConnection(connectionString1);

                    SqlDataAdapter adap = new SqlDataAdapter("Select Semester,Student_Email from Course_Detail3 where Teacher_Email=  '" + Request.QueryString["Email"] + "' ORDER BY Student_Email ASC ", connection1);
                    SqlCommandBuilder build = new SqlCommandBuilder(adap);
                    DataTable dt = new DataTable();
                    adap.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        if (id == dt.Rows[i][0].ToString())
                        {

                            sem = dt.Rows[i][0].ToString();
                            // srt = dt.Rows[i][1].ToString();
                            s1[j] = dt.Rows[i]["Student_Email"].ToString();
                            j++;
                            // Storingvalue();


                        }


                    }



                }


                catch (Exception ex)
                {
                    throw;
                }




               
              
            
        }
    }

   

    protected void Submit_Click(object sender, EventArgs e)
    {
        string StudentEmail = Request.Form["StudentEmail"]; 
        string id= Request.QueryString["id"];
      
        try{

        string connectionString1 = null;
            SqlConnection connection1;
            connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
            connection1 = new SqlConnection(connectionString1);

            SqlDataAdapter adap = new SqlDataAdapter("Select * from Course_Detail3 where Teacher_Email=  '" + Request.QueryString["Email"] + "' ", connection1);
            SqlCommandBuilder build = new SqlCommandBuilder(adap);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {

                if (id == dt.Rows[i][3].ToString())
                {

                    Courrseins = dt.Rows[i][0].ToString();
                    department = dt.Rows[i][1].ToString();
                    Subject = dt.Rows[i][2].ToString();

                    Semester = dt.Rows[i][3].ToString();

                }


            }





           

            string connectionString = null;
            SqlConnection connection;
            SqlCommand cmd;

            string sql = null;



            sql = "insert into Course_Detail3(Instructor_Name,Department,Subject,Semester,Teacher_Email,Student_Email) values('" + Courrseins + "','" + department + "' , '" + Subject + "', '" + Semester + "','" + Request.QueryString["Email"] + "','" + StudentEmail + "')";
            connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
            connection = new SqlConnection(connectionString);

            connection.Open();
            cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = connection;
            cmd.ExecuteNonQuery();
            Sendemail();

            //  connection.Close();

            Response.Write("<script>alert('Student Added  Successfully');</script>");





            StudentDisplay();
          









        }
        catch (Exception ex)
        {
            throw;
        }
        
    



    }





    public void Sendemail()
    {
        string StudentEmail = Request.Form["StudentEmail"]; 
       
        string FromAdd = "classroom.management09@gmail.com";
        string pass = "classroom09@";

       


        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        // NetworkCredential NetworkCred = new NetworkCredential(FromAdd, pass);

        smtp.Credentials = new System.Net.NetworkCredential(FromAdd, pass);

        //smtp.Credentials = NetworkCred;
        smtp.EnableSsl = true;
        MailMessage message = new MailMessage();

        message.Subject = "Classroom Notification ";
        // ActivationUrl = Server.HtmlEncode("http://localhost:58089/Covid19/Default5.aspx?Username=" + GetUserID(Email));
        //  message.Body = "<a  href=' " + ActivationUrl + " '>Click Here to verify your acount</a>";
        message.Body = "Welcome to Classroom You Are Succefully added to  Subject " + Subject + ",  And Course Instructor is " + Courrseins + "";
        message.IsBodyHtml = true;
        message.To.Add(StudentEmail);
        message.From = new MailAddress(FromAdd);
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

        try
        {
            smtp.Send(message);

        }
        catch (Exception ex)
        {

            throw;
        }




    }



    public void StudentDisplay()
    {
        

        try
        {

            string connectionString1 = null;
            SqlConnection connection1;
            connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
            connection1 = new SqlConnection(connectionString1);

            SqlDataAdapter adap = new SqlDataAdapter("Delete from Course_Detail3 where Student_Email IS NULL ", connection1);
            SqlCommandBuilder build = new SqlCommandBuilder(adap);
            
            



        }


        catch (Exception ex)
        {
            throw;
        }

    }



  






}