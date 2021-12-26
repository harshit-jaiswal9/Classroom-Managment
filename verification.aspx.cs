using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default2 : System.Web.UI.Page
{
   // SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ToString());
   // string USERID, USERNAME;
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

        if (!IsPostBack)
        {
            if (Request.QueryString["Email"] != string.Empty)
            {
                TextBox1.Text = Request.QueryString["Email"];
            }
        } 


       

       // TextBox1.Text = Server.UrlDecode(Request.QueryString["Email"]);

       /* var textbox = PreviousPage.FindControl("Email") as TextBox;
        if (textbox != null)
        {
            TextBox1.Text = textbox.Text;
        } */
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
       
    } 

    protected void Verify_Click(object sender, EventArgs e)
    {
        string sql;

        string vmail = Request.Form["Vmail"];



        string connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";

            //  sql = "select * from Register1 where Email='" + Request.QueryString["Email"] + "'  ";

            text1 = TextBox1.Text;
            sql = "select * from Registration2 where Email= '" + text1 + "'  ";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = sql;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                string ActivationCode;
                ActivationCode = ds.Tables[0].Rows[0]["ActivationCode"].ToString();
                string Emailadd = ds.Tables[0].Rows[0]["Email"].ToString();
                if (ActivationCode == vmail && Emailadd == TextBox1.Text)
                {

                    changestatus();
                    Messagebox("Successfully verify your mail");

                }
                else
                {
                    Messagebox("please firstly Register");
                }




            }

            con.Close();
       
    
    }

    private void changestatus()
    {

        string connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
      //  string sql = "update Register1 set Status='Verified' where Email='" + Request.QueryString["Email"] + "'  ";
        string sql = "update Registration2 set Status='Verified' where Email='" + text1 + "'  ";

        SqlConnection con = new SqlConnection(connectionString);
        con.Open();
       
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = sql;
        cmd.Connection = con;
        cmd.ExecuteNonQuery();


    }



    protected void Change_Click(object sender, EventArgs e)
    {
        string Username = Request.Form["username"];
        string Email = Request.Form["Semail"];
        string OldPass = Request.Form["oldpass"];
        string NewPass = Request.Form["password"];
        string SamePass = Request.Form["passwordNew"];


        string connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
        string sql = "select Passwords from Registration2 where UserName='" + Username + "' AND Email='" + Email + "'  ";
       SqlConnection con = new SqlConnection(connectionString);
       con.Open();
       SqlCommand cmd = new SqlCommand();
       cmd.CommandText = sql;
       cmd.Connection = con;
       SqlDataAdapter da = new SqlDataAdapter();
       da.SelectCommand = cmd;
       DataSet ds = new DataSet();
       da.Fill(ds);
       if (ds.Tables[0].Rows.Count > 0)
       {
           string CheckOldPass;
           CheckOldPass = ds.Tables[0].Rows[0]["Passwords"].ToString();
           if (CheckOldPass == OldPass)
           {

               // changestatus();


               if (NewPass == SamePass)
               {
                   try
                   {
                       string connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                       string sql1 = "update Register1 set Passwords='" + NewPass + "' where UserName='" + Username + "'  ";

                       SqlConnection con1 = new SqlConnection(connectionString1);
                       con1.Open();

                       SqlCommand cmd1 = new SqlCommand();
                       cmd1.CommandText = sql1;
                       cmd1.Connection = con1;
                       cmd1.ExecuteNonQuery();

                       Messagebox("Password Change Successfully");
                   }
                   catch { 
                   throw;
                   }

               }

               else
               {

                   Messagebox("Enter Same password");

               }

           }

           else {

               Messagebox("Please Enter correct old password");
           
           }
       }

       else
       {
           Messagebox("Email /User name does not exist");

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