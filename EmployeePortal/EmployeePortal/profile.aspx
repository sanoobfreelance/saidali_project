<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="EmployeePortal.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section >
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto vh-100">
                <div class="row">
                    <div class="col">
                        <br />
                        <center>
                            <h1 class="fw-bold" >Profile</h1>
                            
                        </center>
                    </div>
                </div>
                <br />
                <div class="row">
                     <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="First Name" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Last Name" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                </div>
                   
                <br />  
               <%--    <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="Full Name" runat="server" ></asp:TextBox> --%>  
                 
                 <div class="row">
                     <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Contact Number" runat="server" TextMode="phone"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Date of Birth" runat="server" TextMode="Date"></asp:TextBox>
                       </div>
                    </div>
                </div>
                <br />
                 <div class="row">
                     <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="State" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="City" runat="server"></asp:TextBox>
                       </div>
                    </div>
                          <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="Pincode" TextMode="Number" runat="server"></asp:TextBox>
                       </div>
                    </div>
                </div>
                 <br />
                        <div class="row">
                     <div class="col-md-12">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="Full Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                       </div>
                         
                    </div>
                   
                </div>
                <br />
                 <div class="row">
                    <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" ReadOnly="true" placeholder="Email Id" runat="server" TextMode="Email"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-4">
                       <div class="form-group"> 
                           <asp:TextBox CssClass="form-control" ID="TextBox10" ReadOnly="true" placeholder="Old Password" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                      <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" placeholder="New Password" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                </div>                                                                     
                      <div class="text-center text-lg-start mt-4 pt-2">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 2.5rem; padding-right: 2.5rem;" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click"  />
          </div>
                <br />

            </div>
        </div>
         <br />
     
       
    </div>
        </section>








</asp:Content>
