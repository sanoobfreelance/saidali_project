using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace EmployeePortal
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["admin_username"].ToString() == "" || Session["admin_username"].ToString() == null)
                {
                    Response.Write("<script>alert('Session Expired login again');</script>");
                    Response.Redirect("welcomepage.aspx");
                }
                else
                {
                    adminData();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
         
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["admin_username"].ToString() == "" || Session["admin_username"].ToString() == null)
                {
                    Response.Write("<script>alert('Session Expired login again');</script>");
                    Response.Redirect("welcomepage.aspx");
                }
                else
                {
                    adminUpdate();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
        }
        
        void adminData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from admin_login_table where admin_username ='" + Session["admin_username"] + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TextBox1.Text = dt.Rows[0]["admin_username"].ToString();
                TextBox2.Text = dt.Rows[0]["password"].ToString();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert( '" + ex.Message + "' );  </script>");
            }
        }
        void adminUpdate()
        {
            string password ;
            if (TextBox3.Text.Trim() == "")
            {
                password = TextBox2.Text.Trim();
            }
            else
            {
                password = TextBox3.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE admin_login_table SET password=@password where admin_username ='" + Session["admin_username"] + "'", con);      
                cmd.Parameters.AddWithValue("@password",password);
                int result = cmd.ExecuteNonQuery();


                if (result > 0)
                {
                    Response.Write("<script>alert('Your Detailes updated successfully');</script>");
                    adminData();
                }
                else
                {
                    Response.Write("<script>alert('Username not exixt');</script>");
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert( '" + ex.Message + "' );</script>");
            }
        }
    }
}