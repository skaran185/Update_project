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

public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void signup1_click(object sender, EventArgs e)
        {


            if (email.Text == "")
            {
                Response.Write("<script>alert('enter email')</script>");
            }

            else
            {

                using (SqlConnection con = new SqlConnection("Data Source=JOSHI;Integrated Security=true;Initial Catalog=study"))
                {
                    con.Open();

                    bool exists = false;

                    // create a command to check if the username exists

                    using (SqlCommand cmd = new SqlCommand("select count(*) from users where email = @email", con))
                    {
                        cmd.Parameters.AddWithValue("email", email.Text);
                        exists = (int)cmd.ExecuteScalar() > 0;
                    }

                    // if exists, show a message error
                    if (exists)
                        Response.Write("<script>alert('Email already exist')</script>");
                    else
                    {
                        // does not exists, so, persist the user

                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = ("insert into users ( Name,email,address,contact,password,role)values('" + name.Text + "', '" + email.Text + "','" + address.Text + "','" + contact.Text + "','" + password.Text + "','" + 1 + "') ");

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


            
            }

        }


    protected void login_click(object sender, EventArgs e)
    {
        SqlConnection con;
        con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["TeamTask"].ConnectionString;
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from users where email='" + email1.Text + "' and password ='" + password1.Text + "'", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);

        if (dt.Rows.Count > 0)

        {
            Session["Name"] = dt.Rows[0]["Name"].ToString();
            Session["role"] = dt.Rows[0]["role"].ToString();
            Session["email"] = dt.Rows[0]["email"].ToString();
            Session["contact"] = dt.Rows[0]["contact"].ToString();
            Session["address"] = dt.Rows[0]["address"].ToString();

            string role = dt.Rows[0]["role"].ToString();
            if (role == "1")
            {
                Response.Redirect("StudentProfile.aspx");
            }
            else
            {

              
                    Response.Redirect("AddCourses.aspx");
                

            }


        }

        else

        {

            Response.Write("<script>alert('Please enter valid Username and Password')</script>");

        }
        con.Close();
    }
}

