<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="todolist.aspx.cs" Inherits="EmployeePortal.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row" > 
            <div class="col-md-12" >
                <div class="col">
                    <center>
                    <h1>Todo List</h1>
                        </center>
                </div>
                <div>
                    <center>
                        
                  <div class="form-group">  
                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <span ><asp:Button ID="Button1" runat="server" Text="ADD" /></span>
                  </div>
                       <div>
                            
                       </div>
                      
                           
                        </center>
                </div>
            </div>
        </div>

    </div>





   <%--   <div class="container">
        <div class="row">
            <div class="col-md-5 vh-100">
                <div class="row">
                    <div class="col">
                        <br />
                        <center>
                            <h1 class="fw-bold" >ToDo List</h1>
                        </center>
                    </div>
                </div>
                <br />
                <div class="row">
                    <div class="col-md-3">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="SL No." runat="server" ></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-9">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Last Name" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                </div>
                <br />
              
                 <div class="row">
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Email Id" runat="server" TextMode="Email"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox4" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>
                       </div>
                    </div>
                </div>
                <br />
                 
                 <div class="row">
                     <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox5" placeholder="Contact Number" runat="server" TextMode="number"></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-6">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox6" placeholder="Date of Birth" runat="server" TextMode="Date"></asp:TextBox>
                       </div>
                    </div>
                </div>
                <br />

               
                     <div class="row">
                     <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox7" placeholder="State" runat="server" ></asp:TextBox>
                       </div>
                    </div>
                    <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox8" placeholder="City" runat="server"></asp:TextBox>
                       </div>
                    </div>
                          <div class="col-md-4">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" placeholder="Pincode" TextMode="Number" runat="server"></asp:TextBox>
                       </div>
                    </div>
                </div>
                <br />
                    
                       <div class="row">
                     <div class="col-md-12">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox10" placeholder="Full Address" runat="server" TextMode="MultiLine"></asp:TextBox>
                       </div>
                         
                    </div>
                   
                </div>
                       <div class="text-center text-lg-start mt-4 pt-2">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 2.5rem; padding-right: 2.5rem;" ID="Button1" runat="server" Text="Submit" />
          </div>
                <br />

            </div>


            <div class="col-md-7">
                <h1>hi</h1>
            </div>
        </div>
    </div>
       --%>
</asp:Content>
