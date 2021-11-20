<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="EmployeePortal.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="d-flex justify-content-center align-items-center " style="height:600px">
          <div class="col-md-8 col-lg-6 col-xl-4  ">

    <div class="text-center">
            <h1>Admin Login</h1>
              <br />
          </div>
        
        
          <div>
             
         
              <asp:TextBox ID="TextBox1" class="form-control form-control-lg" placeholder="Username"  runat="server"></asp:TextBox>
                <p >
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter your Username" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator></p>
          
          </div>

          
          <div>
         
              <asp:TextBox ID="TextBox2" placeholder="Enter password" class="form-control form-control-lg" runat="server" TextMode="Password"></asp:TextBox>
         <p >
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter your Username" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator></p>
              </div>

          <div>

             
          <div class="text-center text-lg-start mt-4 pt-2">
                              <asp:Button class="btn btn-primary btn-lg "
              style="padding-left: 2.5rem; padding-right: 2.5rem;"  ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />
            
          </div>

       
        

      </div>
    </div>
        </section>
</asp:Content>
