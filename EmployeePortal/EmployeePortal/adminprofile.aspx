<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="EmployeePortal.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container mt-5 pt-0 p-5">
         <div > 
             <center>
                 <h1>Admin Profile</h1>
             </center>
         </div>
         <br />
    <div class="row text-center">
       
                    <div class="col-md-4">
                       <div class="form-group">
                           
                           <asp:TextBox CssClass="form-control" ID="TextBox1" ReadOnly="true" placeholder="Username" runat="server" ></asp:TextBox>
                       
                                </div>
                    </div>
                    <div class="col-md-4">
                       <div class="form-group"> 
                           <asp:TextBox CssClass="form-control" ID="TextBox2" ReadOnly="true"  placeholder="Old Password" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                      <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="New Password" runat="server" ></asp:TextBox>
                       </div>
                    </div>
         <div class="text-center text-lg-start mt-4 pt-2">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 2.5rem; padding-right: 2.5rem;" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"   />
          </div>
                </div>  
       
         </div>
</asp:Content>
