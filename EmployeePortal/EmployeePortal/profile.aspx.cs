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
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["email_id"].ToString() == "" || Session["email_id"].ToString() == null)
                {
                    Response.Write("<script>alert('Session Expired login again');</script>");
                    Response.Redirect("welcomepage.aspx");
                }
                else
                {
                    if (!Page.IsPostBack)
                    {
                        getUserData();
                    }
                    
                }
            }
           catch(Exception ex)
                {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
               


            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["email_id"].ToString() == "" || Session["email_id"].ToString() == null)
                {
                    Response.Write("<script>alert('Session Expired login again');</script>");
                    Response.Redirect("welcomepage.aspx");
                }
                else
                {
                    updateClick();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }


            
        }
        // userDefinedFunction
        void updateClick()
        {
          
            string password ;
            if (TextBox11.Text.Trim() == "")
            {
                password = TextBox10.Text.Trim();
            }
            else
            {
                password = TextBox11.Text.Trim();
            }
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("UPDATE registration_db SET first_name=@first_name,last_name=@last_name,contact_number=@contact_number,dob=@dob,state=@state,city=@city,pincode=@pincode,full_address=@full_address,password=@password where email_id = '" + Session["email_id"].ToString().Trim() + "'", con);

                cmd.Parameters.AddWithValue("@first_name",TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name",TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_number",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@dob",TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state",TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@city",TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode",TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address",TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password",password);

                int result = cmd.ExecuteNonQuery();
               

                if (result >0)
                {
                    Response.Write("<script>alert('Your Detailes updated successfully');</script>");
                    getUserData();
                }
                else
                {
                    Response.Write("<script>alert('Username not exixt');</script>");
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
        void getUserData()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from registration_db where email_id = '" + Session["email_id"].ToString() + "'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                TextBox1.Text = dt.Rows[0]["first_name"].ToString();
                TextBox2.Text = dt.Rows[0]["last_name"].ToString();
                TextBox3.Text = dt.Rows[0]["contact_number"].ToString();
                TextBox4.Text = dt.Rows[0]["dob"].ToString();
                TextBox5.Text = dt.Rows[0]["state"].ToString();
                TextBox6.Text = dt.Rows[0]["city"].ToString();
                TextBox7.Text = dt.Rows[0]["pincode"].ToString();
                TextBox8.Text = dt.Rows[0]["full_address"].ToString();
                TextBox9.Text = dt.Rows[0]["email_id"].ToString();
                TextBox10.Text = dt.Rows[0]["password"].ToString();

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }




        }    
    }
}
