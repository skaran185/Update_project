using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CourseDetails : System.Web.UI.Page


{
    string strCon = "Data Source=JOSHI;Integrated Security=true;Initial Catalog=study";

    protected void Page_Load(object sender, EventArgs e)
    {

       
        int courseID = Convert.ToInt32(Request.QueryString["id"].ToString());
        if (courseID==1)
        {
            courseNAme.Text = "Select website to learn Bootstrap ";
        }
        if (courseID == 2)
        {
            courseNAme.Text = "Select website to learn HTML ";
        }
        if (courseID == 3)
        {
            courseNAme.Text = "Select website to learn CSS ";
        }
        if (courseID == 4)
        {
            courseNAme.Text = "Select website to learn C# ";
        }
        if (courseID == 5)
        {
            courseNAme.Text = "Select website to learn JAVA ";

        }
        if (courseID == 6)
        {
            courseNAme.Text = "Select website to learn ANDROID ";
        }
        using (SqlConnection con = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = @"select * from course where course_name= @courseID and course_type=1 order by rate desc ";
                cmd.Parameters.AddWithValue("@courseID", courseID);
                cmd.Connection = con;
                con.Open();
                DataTable dt = new DataTable();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                VideoRepeater.DataSource = dt;
                VideoRepeater.DataBind();
                con.Close();
            }
        }
    }


    public void video_click(object sender, EventArgs e)
    {
        int courseID = Convert.ToInt32(Request.QueryString["id"].ToString());
      

        using (SqlConnection con = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = @"select * from course where course_name= @courseID and course_type=1 order by rate desc ";
                cmd.Parameters.AddWithValue("@courseID", courseID);
                cmd.Connection = con;
                con.Open();
                DataTable dt = new DataTable();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                VideoRepeater.DataSource = dt;
                VideoRepeater.DataBind();
                con.Close();
            }
        }
    }
    public void pdf_click(object sender, EventArgs e)
    {
        int courseID = Convert.ToInt32(Request.QueryString["id"].ToString());
       
        using (SqlConnection con = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = @"select * from course where course_name= @courseID and course_type=3 order by rate desc ";
                cmd.Parameters.AddWithValue("@courseID", courseID);
                cmd.Connection = con;
                con.Open();
                DataTable dt = new DataTable();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                VideoRepeater.DataSource = dt;
                VideoRepeater.DataBind();
                con.Close();
            }
        }
    }
    public void online_click(object sender, EventArgs e)
    {
        int courseID = Convert.ToInt32(Request.QueryString["id"].ToString());
     
        using (SqlConnection con = new SqlConnection(strCon))
        {
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = @"select * from course where course_name= @courseID and course_type=2 order by rate desc ";
                cmd.Parameters.AddWithValue("@courseID", courseID);
                cmd.Connection = con;
                con.Open();
                DataTable dt = new DataTable();

                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                VideoRepeater.DataSource = dt;
                VideoRepeater.DataBind();
                con.Close();
            }
        }
    }

    
    [System.Web.Services.WebMethod]

    public static string UpdateUrlRate(string name)
    {
        string strCon = "Data Source=JOSHI;Integrated Security=true;Initial Catalog=study";
        SqlConnection con = new SqlConnection(strCon);
        con.Open();

        // con.ConnectionString = WebConfigurationManager.ConnectionStrings["TeamTask"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ("UPDATE course SET rate = rate + 1 WHERE id='" +Convert.ToInt32(name) + "' ");

        cmd.Connection = con;



        int i = cmd.ExecuteNonQuery();

        con.Close();

        return "success";
    }
    //UPDATE Orders SET Quantity = Quantity + 1 WHERE
}