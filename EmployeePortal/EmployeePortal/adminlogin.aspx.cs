using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace EmployeePortal
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from admin_login_table where admin_username='"+ TextBox1.Text.Trim() +"' and password='" +TextBox2.Text.Trim() + "'" , con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert(' Success fully logined');</script>");
                        Session["admin_username"] = dr.GetValue(0).ToString();
                        Session["password"] = dr.GetValue(1).ToString();
                        Session["role"] = "admin";
                        
                    }
                    Response.Redirect("employeedetailesmanagment.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid');</script>");

                }

            }
            catch
            {

            }
           

        }
    }
}