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

public partial class _Default : System.Web.UI.Page
{
   string con = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";

    SqlCommand cm;
    string str = null;
    string activationcode;
    string text1;
    protected void Page_Load(object sender, EventArgs e)
    {
        /* if (Request.QueryString["UserName"] != null)
         {
             USERID = Request.QueryString["UserName"];
             SqlCommand cmd = new SqlCommand("Update Register set IS_APPROVE=1 where UserName=@Username", con);
             cmd.Parameters.AddWithValue("@USER_ID", USERID);
             con.Open();
             cmd.ExecuteNonQuery();
             Response.Write(Request.QueryString["USER_ID"]);
         }*/

        //  string vmail = Session["VerifyEmail"].ToString(); 

        // TextBox1.Text = Request.QueryString["Email"];
       


        // 

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string Username = Request.Form["FOusername"];
        string Email = Request.Form["FOemail"];




        SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True");
        //  con.Open();
        SqlCommand cmd = new SqlCommand("SELECT UserName,Email,Passwords FROM Registration2 Where Email= '" + Email + "' AND UserName='" + Username + "' ", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        // con.Close();
        if (ds.Tables[0].Rows.Count > 0)
        {

            // 

            MailMessage email = new MailMessage();
            email.From = new MailAddress("classroom.management09@gmail.com"); //Enter sender email address
            email.To.Add(Email); //Destination Recipient e-mail address.
            email.Subject = "Your Forrget Password:";//Subject for your request
            email.Body = "Hi,<br/>Your Username is: " + ds.Tables[0].Rows[0][0] + "<br/><br/>Your Password is: " + ds.Tables[0].Rows[0]["Passwords"] + "<br/>";
            email.IsBodyHtml = true;
            //SMTP SERVER DETAILS

            SmtpClient smtpc = new SmtpClient("smtp.gmail.com");
            smtpc.Port = 587;
            smtpc.UseDefaultCredentials = false;
            smtpc.EnableSsl = true;
            smtpc.DeliveryMethod = SmtpDeliveryMethod.Network;
            // smtp.Credentials = new System.Net.NetworkCredential("jacknahipta345@gmail.com", "12345678@Jj");


            // Label1.Text = "jacknahipta345@gmail.com"; //<--Enter your gmail id here
            //  Label2.Text = "12345678@J";//<--Enter gmail password here
            //Label3.Text = "msdotnet website"; //Subject for your website
            //Label4.Text = "webcome to http://msdotnet.co.in. please share this website to your friends"; //Message body
            try
            {
                smtpc.Credentials = new NetworkCredential("classroom.management09@gmail.com", "classroom09@");
                smtpc.Send(email);
                //  Label2.Text = "Your password has been sent to your email address";
                Response.Write("<script>alert('Your password has been sent to your email address ');</script>");
            }
            catch
            {
                throw;
            }
        }
        else
        {
            Response.Write("<script>alert('This email address is not exist in our Database try again ');</script>");
            // Label3.Text="This email address is not exist in our Database try again";
        }





    }



    protected void Submit_Click(object sender, EventArgs e)
    {

        // string Username =name;

        //  string Email = "email".ToString();
        string Username = Request.Form["username"];
        string Email = Request.Form["semail"];
        string mobile = Request.Form["Mobile"];
        string Enrollment = Request.Form["Enrollment"];
        string Department = Request.Form["Department"];
        string Role = Request.Form["mfi_4_a_i"];

        string Password = Request.Form["password"];
        string PasswordNew = Request.Form["passwordNew"];

        Random random = new Random();
        activationcode = random.Next(1001, 9999).ToString();


        /*   string Username = username.Value.ToString();
             string Email = email.Value.ToString();
             string Password = passworddd.Value.ToString();
             string PasswordNew = passwords.Value.ToString();  */
        /*
                string Username = name.Value.ToString();

                string Email = email.Value;
                string Password = passworddd.Value;
                string PasswordNew = passwords.Value; */

        if (IsUsernameEmailExist())
        {


            Messagebox("Username/Email address already exists. Please try another");
            return;
        }



      /*        else{

      SqlConnection conn = new SqlConnection(con);
            conn.Open();
            str = "Select count(*)from Register where UserName= '" + Username + "' ";
            cm = new SqlCommand(str, conn);
            int count = Convert.ToInt32(cm.ExecuteScalar());
            conn.Close();
            if (count > 0)
            {
                Response.Write("<script>alert('User name already Exists please choose different name');</script>");




            } */
        //  Response.Redirect("Default.aspx");


        else
        {

            try
            {

                string connectionString = null;
                SqlConnection connection;
                SqlCommand cmd;

                string sql = null;
                if (Role == "Student" || Role == "Teacher")
                {
                    if (Password == PasswordNew)
                    {

                        sql = "insert into Registration2(Username,Role,Enrollment,Department,Email,MobileNo,Passwords,Status,ActivationCode) values('" + Username + "','" + Role + "' , '" + Enrollment + "', '" + Department + "', '" + Email + "' ,'" + mobile + "' ,'" + Password + "', 'UnVerified', '" + activationcode + "')";
                        connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                        connection = new SqlConnection(connectionString);

                        connection.Open();
                        cmd = new SqlCommand();
                        cmd.CommandText = sql;
                        cmd.Connection = connection;
                        cmd.ExecuteNonQuery();
                        //  connection.Close();
                        Sendemail();
                        //  cmd.Dispose();



                        Messagebox("Successfully register And please verify your mail");




                        Response.Redirect("verification.aspx?Email=" + Email);






                    }
                    else


                        Response.Write("<script>alert('Please enter the same password');</script>");
                }

                else if (Role == "Select Role")
                {

                    Response.Write("<script>alert('Please Select Correct Role');</script>");
                }

               

            }
            catch (Exception ex)
            {
                throw;
            }

        }

 
       

        //{


    }






    protected void Login_Click(object sender, EventArgs e)
    {


        string Username = Request.Form["Lusername"];
        string PassWord = Request.Form["Lpassword"];
        string Roles = Request.Form["Roles"];

        string connectionString = null;
        SqlConnection connection;
        //   SqlCommand cmd;

        connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
        connection = new SqlConnection(connectionString);
        try
        {
            //connection.Open();
            SqlDataAdapter adap = new SqlDataAdapter("Select * from Registration2", connection);
            SqlCommandBuilder build = new SqlCommandBuilder(adap);
            DataTable dt = new DataTable();
            adap.Fill(dt);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                if ((dt.Rows[i][0].ToString() == Username) && (dt.Rows[i][6].ToString() == PassWord))
                {

                    if (dt.Rows[i][1].ToString() == Roles && Roles == "Teacher" )
                    {

                        Response.Redirect("TeacherDashboard.aspx?Username=" + Username + "&Roles=" + Roles + "&Email=" + dt.Rows[i][4].ToString());
                    }

                    else if (dt.Rows[i][1].ToString() == Roles && Roles == "Student")
                    {
                        Response.Redirect("Default3.aspx?Username=" + Username + "&Roles=" + Roles + "&Email=" + dt.Rows[i][4].ToString());
                    }
                    else {
                        Response.Write("<script>alert('Roles does not match');</script>");
                    
                    }
                    // Response.Write("<script>alert('Password match');</script>");
                }
                else
                    Response.Write("<script>alert('Password does not match');</script>");
            }



            // connection.Close();

        }
        catch (Exception ex)
        {

        }


    }



    public void Sendemail()
    {
        string ActivationUrl;
        string FromAdd = "classroom.management09@gmail.com";
        string pass = "classroom09@";

        string Email = Request.Form["semail"];
        string Username = Request.Form["username"];//


        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        // NetworkCredential NetworkCred = new NetworkCredential(FromAdd, pass);

        smtp.Credentials = new System.Net.NetworkCredential(FromAdd, pass);

        //smtp.Credentials = NetworkCred;
        smtp.EnableSsl = true;
        MailMessage message = new MailMessage();

        message.Subject = "Verification Email ";
        // ActivationUrl = Server.HtmlEncode("http://localhost:58089/Covid19/Default5.aspx?Username=" + GetUserID(Email));
        //  message.Body = "<a  href=' " + ActivationUrl + " '>Click Here to verify your acount</a>";
        message.Body = "Welcome " + Username + ",  in Classroom  Your Verification Code is " + activationcode + "";
        message.IsBodyHtml = true;
        message.To.Add(Email);
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


    /*  private string GetUserID(string Email)
      {
          string connectionString = null;
          SqlConnection connection;
          connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=Covid19;Integrated Security=True;";
          connection = new SqlConnection(connectionString);
          string ss = "Select UserName from Register1 where Email = ' " + Email + " ' ";
          SqlCommand cmd1 =  new SqlCommand(ss,connection);
          cmd1.Parameters.AddWithValue("@EMAIL", Email);
          //string UserID = cmd1.ExecuteScalar().ToString();
          string UserID = cmd1.ToString();
          return UserID;
      }*/



    private bool IsUsernameEmailExist()
    {
        string Username = Request.Form["username"];
        string Email = Request.Form["semail"];

        string connectionString = null;
        SqlConnection connection;
        connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
        connection = new SqlConnection(connectionString);

        SqlCommand cmd = new SqlCommand("Select * from Registration2 where UserName='" + Username + "' or Email='" + Email + "' ", connection);
        connection.Open();
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(dt);
        //  connection.Close();
        if (dt.Rows.Count > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    private void Messagebox(string Message)
    {
        Label lblMessageBox = new Label();

        lblMessageBox.Text =
            "<script language='javascript'>" + Environment.NewLine +
            "window.alert('" + Message + "')</script>";

        Page.Controls.Add(lblMessageBox);

    }


}

