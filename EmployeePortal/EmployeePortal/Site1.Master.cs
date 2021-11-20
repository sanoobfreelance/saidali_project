using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace EmployeePortal
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          try
            {
                if(Session["role"] != null)
                {
                    if (Session["role"].Equals(""))
                    {
                        LinkButton5.Visible = false; //logout nav-link button
                        LinkButton6.Visible = false; //profile nav-link button
                        LinkButton7.Visible = false;  //admin profile link button
                        LinkButton1.Visible = true; //admin ligin footer-link button
                        LinkButton2.Visible = false; //EmployeeDetailsManagement footer-link button
                        LinkButton3.Visible = false; //AccountMaintain footer-link button
                        LinkButton4.Visible = false; //EmployeePerformence footer-link button
                    }

                    else if (Session["role"].Equals("user"))
                    {
                        LinkButton5.Visible = true; //logout nav-link button
                        LinkButton6.Visible = true; //profile nav-link button
                        LinkButton7.Visible = false;  //admin profile link button
                        LinkButton1.Visible = true; //admin ligin footer-link button
                        LinkButton2.Visible = false; //EmployeeDetailsManagement footer-link button
                        LinkButton3.Visible = false; //AccountMaintain footer-link button
                        LinkButton4.Visible = false; //EmployeePerformence footer-link button
                    }

                    else if (Session["role"].Equals("admin"))
                    {
                        LinkButton5.Visible = true; //logout nav-link button
                        LinkButton6.Visible = false; //profile nav-link button
                        LinkButton7.Visible = true;  //admin profile link button
                        LinkButton1.Visible = false; //admin ligin footer-link button
                        LinkButton2.Visible = true; //EmployeeDetailsManagement footer-link button
                        LinkButton3.Visible = true; //AccountMaintain footer-link button
                        LinkButton4.Visible = true; //EmployeePerformence footer-link button
                    }

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
     
      
        }

        protected void LinkButton1_Click(object sender, EventArgs e)

        {

                Response.Redirect("adminlogin.aspx");
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeedetailesmanagment.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {

            Session["email_id"] = "";
            Session["first_name"] = "";
            Session["role"] = "";
            LinkButton5.Visible =false; //logout nav-link button
            LinkButton6.Visible = false; //profile nav-link button

            LinkButton1.Visible = true; //admin login footer-link button
            LinkButton2.Visible = false; //EmployeeDetailsManagement footer-link button
            LinkButton3.Visible = false; //AccountMaintain footer-link button
            LinkButton4.Visible = false; //EmployeePerformence footer-link button
            Response.Redirect("welcomepage.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

            Response.Redirect("profile.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminprofile.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("accountmaintain.aspx");
        }
    }
}