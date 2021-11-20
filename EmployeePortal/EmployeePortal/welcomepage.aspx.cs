using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePortal
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
      
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from registration_db where email_id='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                       Response.Write("<script>alert('Success fully logined');</script>");
                       Session["email_id"] = dr.GetValue(2).ToString();
                       Session["first_name"] = dr.GetValue(0).ToString();
                       Session["role"] ="user";

                    }
                    Response.Redirect("profile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid');</script>");

                }

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }
    }
}