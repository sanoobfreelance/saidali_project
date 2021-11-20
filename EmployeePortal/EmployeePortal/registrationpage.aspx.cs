using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EmployeePortal
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Response.Write("<script>alert('Testing');</script>");
            if (checkUserExists())
            {
                Response.Write("<script>alert('Member already Exist try with another Username');</script>");
            }
            else
            {
                userRegistration();
            }
          
        }

        void userRegistration()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO registration_db (first_name,last_name,email_id,password,contact_number,dob,state,city,pincode,full_address) values (@first_name,@last_name,@email_id,@password,@contact_number,@dob,@state,@city,@pincode,@full_address)", con);

                cmd.Parameters.AddWithValue("@first_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@email_id", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_number", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", TextBox10.Text.Trim());
            

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Register Successful. Go to user login to login');</script>");
                Response.Redirect("welcomepage.aspx");

            }
            catch (Exception ex)
            {

                //Response.Write("<script>alert('" + ex.Message + "');</script>");
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
             bool checkUserExists() {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from registration_db where email_id='" +TextBox3.Text.Trim()+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if(dt.Rows.Count >= 1)
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

       
    }
}