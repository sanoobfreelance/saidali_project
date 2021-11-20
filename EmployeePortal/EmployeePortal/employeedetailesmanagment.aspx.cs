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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //search button
            search();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //delete button
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
                /* SqlDataReader dr = cmd.ExecuteReader();
                 if (dr.HasRows)
                 {
                     while (dr.Read())
                     {
                         TextBox2.Text = dr.GetValue(0).ToString();
                         TextBox3.Text = dr.GetValue(2).ToString();
                     }
                 }
                 */
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox2.Text = dt.Rows[0]["first_name"].ToString();
                TextBox3.Text = dt.Rows[0]["email_id"].ToString();
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert( '" + ex.Message + "' );  </script>");
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
                SqlCommand cmd = new SqlCommand("DELETE FROM registration_db where Employee_id ='" + TextBox1.Text.Trim() + "'", con);
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