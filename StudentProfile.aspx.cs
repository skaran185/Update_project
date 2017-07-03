using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"]!=null)
        {
            Label1.Text = Session["name"].ToString();
            Label2.Text = Session["email"].ToString();
            Label3.Text = Session["contact"].ToString();
            Label4.Text = Session["address"].ToString();
         //   Label5.Text = Session["name"].ToString();
        }
        else
        {
            Response.Redirect("login.aspx");
        }


    }
}