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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            //search button
            search();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //add button
            if (checkUserExists())
            {
                Response.Write("<script>alert('Admin already Exist with this Username');</script>");
               
            }
            else
            {
                add();
            }
           
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            delete();
        }
        void search()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * FROM registration_db where Employee_id ='" + TextBox1.Text.Trim() + "'", con);
              
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox2.Text = dt.Rows[0]["email_id"].ToString();
                TextBox3.Text = dt.Rows[0]["password"].ToString();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert( '" + ex.Message + "' );  </script>");
            }

        }
        void add()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO admin_login_table (admin_username,password,admin_id) values ('" +TextBox2.Text.Trim()+ "','" + TextBox3.Text.Trim() + "','" + TextBox1.Text.Trim() + "')", con);
               
         

                cmd.ExecuteNonQuery();
                con.Close();
                    Response.Write("<script>alert('New admin added Successfully. Go to Admin login to login');</script>");                      
            }
            catch (Exception ex)
            {

               
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
        bool checkUserExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from admin_login_table where admin_username='" + TextBox2.Text.Trim() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



                //Response.Write("<script>alert('Register Successful. Go to user login to login');</script>");

            }
            catch (Exception ex)
            {

                //Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }
       
        void delete()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("DELETE FROM admin_login_table where admin_id ='" + TextBox1.Text.Trim() + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
               
                    Response.Write("<script>alert( 'Employee deleted Successfully' );  </script>");
                
               
                clearform();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert( '" + ex.Message + "' );  </script>");
            }

        }
        void clearform()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }

       
    }
}