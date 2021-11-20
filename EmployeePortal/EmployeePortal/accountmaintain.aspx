<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="accountmaintain.aspx.cs" Inherits="EmployeePortal.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <script  type="text/javascript"> 
       
        $(document).ready(function () {
   
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable()
      });  
       
       </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <div class="row">
    <div class="col-md-12 mx-auto"> 
          <div class="row">
                 <div class="col" >
                    <center>
                        <h1>Account Maintain</h1>
                </center>

                    <br />
                </div>

                 </div>
    <div class="row">
                     <div class="col-md-2">
                       <div class="form-group">
                           <div class="input-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="ID" runat="server" ValidationGroup="AccountGroup"></asp:TextBox>
                              
                          <asp:Button ID="Button2" CssClass="btn btn-info " runat="server" Text="Search" OnClick="Button2_Click" ValidationGroup="AccountGroup" />
                               </div>
                           <p> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Enter Id" ForeColor="Red" ValidationGroup="AccountGroup"></asp:RequiredFieldValidator></p>
                           </div>
                    </div>

                    <div class="col-md-5">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" placeholder="Name" ReadOnly="true" runat="server"></asp:TextBox>

                           </div>
                    </div>
                          <div class="col-md-5">
                       <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox3" placeholder="Email-id" ReadOnly="true" TextMode="email" runat="server"></asp:TextBox>
                     
                       </div>
                    </div>

            <div class="row">
               <%--   <div class="text-center text-lg-start mt-4 pt-2">  --%>  
                <div  class="col-6 text-right text-lg-start  ">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 4.5rem; padding-right: 4.5rem;" ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click1" ValidationGroup="AccountGroup" />
                    </div>
                  <div  class="col-6 text-left text-lg-start  ">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 4.5rem; padding-right: 4.5rem;" ID="Button3" runat="server" Text="DELETE" OnClick="Button3_Click" ValidationGroup="AccountGroup"
                            />
                    </div>
                
            </div>





                </div>
        <br />
                   <div class="row container "> 
                       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeePortaldbConnectionString %>" SelectCommand="SELECT * FROM [admin_login_table]"></asp:SqlDataSource>
                <div class="col table-responsive ">
                    
                    <asp:GridView ID="GridView1" class="table  table-striped table-bordered " runat="server" AutoGenerateColumns="False" DataKeyNames="admin_username" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="admin_id" HeaderText="Admin Id" SortExpression="admin_id" />
                            <asp:BoundField DataField="admin_username" HeaderText="Admin Username" ReadOnly="True" SortExpression="admin_username" />
                            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                        </Columns>
                    </asp:GridView>
             
                 
               </div>
                      
                    
           </div>




        </div>
        </div>
         </div>
             



</asp:Content>
