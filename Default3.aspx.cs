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
using System.Threading;
using System.ComponentModel;

public partial class Default3 : System.Web.UI.Page
{
    string profileName;
    public string TEmail, Role, Username;
    public String[] s1 = new String[100];
    public int j = 0;
    public string id1, TotalStudent;
    

    protected void Page_Load(object sender, EventArgs e)
    {



        if (!IsPostBack)
        {
           
            
                profileName = Request.QueryString["Username"];


                TEmail = Request.QueryString["Email"];
                Username = Request.QueryString["Username"];
                Role = Request.QueryString["Roles"];

                


                try
                {

                    string connectionString1 = null;
                    SqlConnection connection1;
                    connectionString1 = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                    connection1 = new SqlConnection(connectionString1);

                    SqlDataAdapter adap = new SqlDataAdapter("Select Subject,semester from Course_Detail3 where Student_Email=  '" + Request.QueryString["Email"] + "'  ", connection1);
                    SqlCommandBuilder build = new SqlCommandBuilder(adap);
                    DataTable dt = new DataTable();
                    adap.Fill(dt);
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {

                        


                            // srt = dt.Rows[i][1].ToString();
                           s1[j] = dt.Rows[i]["Subject"].ToString();
                           id1 = dt.Rows[i]["Semester"].ToString();
                            j++;
                            // Storingvalue();


                      

                    }
                   



                }


                catch (Exception ex)
                {
                    throw;
                }



               string cs = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                string myScalarQuery = "select count(*) from Course_Detail3 where Semester='" + id1 + "' ";
                SqlConnection con = new SqlConnection(cs);
                SqlCommand myCommand = new SqlCommand(myScalarQuery, con);
                myCommand.Connection.Open();
                 TotalStudent = myCommand.ExecuteScalar().ToString();
                    
                     
                   

            



        }


    }

    protected void Save_Detail(object sender, EventArgs e)
    {

        HttpFileCollection hfc = Request.Files;
        for (int i = 0; i < hfc.Count; i++)
        {
            HttpPostedFile hh = hfc[i];
            if (hh.ContentLength > 0)
            {

                hh.SaveAs(Server.MapPath("Student_Image") + "\\" + Path.GetFileName(hh.FileName));
                if (i == 0)
                {
                    Image_Pic.ImageUrl = "Student_Image" + Path.GetFileName(hh.FileName);
                }
            }
        }
                string connectionString = null;
                SqlConnection connection;
                SqlCommand cmd;



                string sql = "insert into Details(Username,Images) values('" + Request.QueryString["Username"] + "','" + Image_Pic.ImageUrl + "')";
                    connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                    connection = new SqlConnection(connectionString);

                    connection.Open();
                    cmd = new SqlCommand();
                    cmd.CommandText = sql;
                    cmd.Connection = connection;
                    cmd.ExecuteNonQuery();
                    //  connection.Close();
                    
                    //  cmd.Dispose();



                    Response.Write("<script>alert('Your password has been sent to your email address ');</script>");


                  //  string image = Request.Form["image1"];

                   

                   
                   

           
               

                connectionString = @"Data Source=LAPTOP-SC3LVVEP\SQLEXPRESS;Initial Catalog=projectbca;Integrated Security=True";
                connection = new SqlConnection(connectionString);
               


                connection.Open();
                //string query = ("Select Photo from Student_Notice Order_By_Photo_DESC where Department=" + ("\'" + (imgid + "\'")) );
                string query = ("Select Images from Details  WHERE Username= '" + Request.QueryString["Username"] + "' ORDER BY Images ASC");

                /*string query="Select FROM Photo WHERE TABLE_NAME = (SELECT DISTINCT UT.TABLE_NAME FROM USER_TABLES UT WHERE UT.TABLE_NAME = 'MY_TABLE') AND COLUMN_NAME NOT IN ('AVOID_COLUMN')"
                  */
                cmd = new SqlCommand(query, connection);
                cmd.CommandType = CommandType.Text;
                SqlDataReader dr = cmd.ExecuteReader();
               /* if (Image1.ImageUrl != string.Empty)
                {
                    // while (dr.Read())
                    //{

                    // Label1.Text = dr["Photo"].ToString();
                    //Label2.Text = dr[1].ToString();
                    dr.Read();
                    Image1.ImageUrl = "Student_Image/" + dr["Images"].ToString();

                }*/
            }



             
    
}