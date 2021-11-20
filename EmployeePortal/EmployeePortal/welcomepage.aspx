<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="welcomepage.aspx.cs" Inherits="EmployeePortal.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   

    <section>
  <div class="container-fluid h-custom vh-100">
    <div class="portal-Login row d-flex justify-content-center align-items-center ">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <h1 class="font-weight-bold hedding  display-5 text-center ">EMPLOYEE PORTAL</h1>
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1 ">

    <div class="text-center">
            <h1>User Login</h1>
              <br />
          </div>
               
          <div>
             
         
              <asp:TextBox ID="TextBox1" class="form-control form-control-lg" placeholder="Username as Email ID"  runat="server"></asp:TextBox>

              <p >
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Visible="true" runat="server" ErrorMessage="*Enter your Username" ControlToValidate="TextBox1" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator></p>
       
          </div>

          
          <div>
         
         <asp:TextBox ID="TextBox2" placeholder="Enter password" TextMode="Password" class="form-control form-control-lg" runat="server"></asp:TextBox>
             
              <p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter your password" ControlToValidate="TextBox2" ForeColor="Red" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                             </p>
      
                    </div>

          <div>

             
          <div class="text-center text-lg-start mt-4 pt-2 ">
                              <asp:Button class="btn btn-primary btn-lg "
              style="padding-left: 2.5rem; padding-right: 2.5rem;"  ID="Button1" runat="server" Text="Login" OnClick="Button1_Click1" ValidationGroup="LoginGroup"/>
            <p class="ṇ small  fw-bold mt-2 pt-1 mb-0 ">Don't have an account? <a href="RegistrationPage.aspx"
                class="text-primary">Register</a></p>
          </div>
              
       
        

      </div>
    </div>
  </div>
      </div>
</section>
  


     
    
</asp:Content>
