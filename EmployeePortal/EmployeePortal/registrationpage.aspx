<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registrationpage.aspx.cs" Inherits="EmployeePortal.WebForm2" %>
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
                            <h1 class="fw-bold" >Registration</h1>
                        </center>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="First Name" runat="server" ></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="Enter your Name" ValidationGroup="RegGroup" ></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Last Name" runat="server" ></asp:TextBox>
                     <p>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" ControlToValidate="TextBox2" ErrorMessage="*Enter your Last Name" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                </div>
               
              
                 <div class="row">
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Email Id" runat="server" TextMode="Email"></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" ControlToValidate="TextBox3" ErrorMessage="*Enter your Email Id" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                     <p>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" ControlToValidate="TextBox4" ErrorMessage="Enter your password" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                </div>
               
                 
                 <div class="row">
                     <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Contact Number" runat="server" TextMode="number"></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" ControlToValidate="TextBox5" ErrorMessage="*Enter your Phone number" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="Date of Birth" runat="server" TextMode="Date"></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" ControlToValidate="TextBox6" ErrorMessage="*DOB" ValidationGroup="RegGroup"></asp:RequiredFieldValidator>
                      </p>
                           </div>
                    </div>
                </div>
              

               
                     <div class="row">
                     <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="State" runat="server" ></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ControlToValidate="TextBox7" ErrorMessage="*State" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                    <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="City" runat="server"></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ControlToValidate="TextBox8" ErrorMessage="*City" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>
                          <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" placeholder="Pincode" TextMode="Number" runat="server"></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ControlToValidate="TextBox9" ErrorMessage="*pincodde" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p> 
                       </div>
                    </div>
                </div>
                
                    
                       <div class="row">
                     <div class="col-md-12">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" placeholder="Full Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                      <p>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red"  ControlToValidate="TextBox10" ErrorMessage="*Enter your full address" ValidationGroup="RegGroup"></asp:RequiredFieldValidator></p>
                           </div>
                         
                    </div>
                   
                </div>
                       <div class="text-center text-lg-start mt-4 pt-2">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 2.5rem; padding-right: 2.5rem;" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" ValidationGroup="RegGroup" />
          </div>
              

            </div>
        </div>
    </div>
        </section>
</asp:Content>
