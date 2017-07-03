using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

public partial class AddCourses : System.Web.UI.Page
{
    // con.ConnectionString = WebConfigurationManager.ConnectionStrings["sce"].ConnectionString;
    //public string str = WebConfigurationManager.ConnectionStrings["TeamTask"].ConnectionString;
    
    string strCon = "Data Source=JOSHI;Integrated Security=true;Initial Catalog=study";
    string constr = ConfigurationManager.ConnectionStrings["TeamTask"].ConnectionString;



    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
        }

        if (Convert.ToInt32( Session["role"])==2)
        {
            Label5.Text = Session["name"].ToString();
        }

        else
        {
            Response.Redirect("login.aspx");
        }


    }




    protected void add_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(strCon);
        con.Open();

       // con.ConnectionString = WebConfigurationManager.ConnectionStrings["TeamTask"].ConnectionString;
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = ("insert into course ( course_name,course_type,url,rate)values('" + type.SelectedValue + "', '" + TYPE1.SelectedValue + "','" + URL.Text + "','"+0+"') ");

        cmd.Connection = con;

     

        int i = cmd.ExecuteNonQuery();
        

        if (i != 0)
        {
            lbmsg.Visible = true;
            lbmsg.Text = " Your data is been saved in the database";
            lbmsg.ForeColor = System.Drawing.Color.ForestGreen;

        }
        else
        {
            lbmsg.Visible = true;
            lbmsg.Text = "Something went wrong with selection";
            lbmsg.ForeColor = System.Drawing.Color.Red;

        }

        con.Close();
        
    }


}