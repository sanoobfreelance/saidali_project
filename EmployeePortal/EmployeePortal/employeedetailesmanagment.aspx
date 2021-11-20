<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="employeedetailesmanagment.aspx.cs" Inherits="EmployeePortal.WebForm6" %>
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
              
            <div class="col-md-12">                               
            <div class="row">
                 <div class="col" >
                    <center>
                        <h1>Employee Management</h1>
                </center>

                    <br />
                </div>

                 </div>
             <%-- Above section(delete section)--%>
               <div class="row">
                     <div class="col-md-2">
                       <div class="form-group">
                           <div class="input-group" >
                           <asp:TextBox CssClass="form-control" ID="TextBox1" placeholder="ID" runat="server" ></asp:TextBox>
                  
                          <asp:Button ID="Button2" CssClass="btn btn-info " runat="server" Text="Search" OnClick="Button2_Click" ValidationGroup="SearchGroup" />
                               </div>
                           <p>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" ControlToValidate="TextBox1" ErrorMessage="*Enter ID" ValidationGroup="SearchGroup"></asp:RequiredFieldValidator></p>
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
                    <div class="text-center text-lg-start ">
                        <asp:Button class="btn btn-primary btn-lg " style="padding-left: 4.5rem; padding-right: 4.5rem;" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" ValidationGroup="SearchGroup"/>
          </div>
                </div>
                <br />
                   <%-- Above section(delete section)--%>
            <div class="row "> 
               
                <div class="col table-responsive ">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmployeePortaldbConnectionString %>" SelectCommand="SELECT * FROM [registration_db]"></asp:SqlDataSource>
                   
             
                    <asp:GridView ID="GridView1" class="table  table-striped table-bordered "  runat="server" AutoGenerateColumns="False" DataKeyNames="email_id" DataSourceID="SqlDataSource1" Height="47px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    
                        <Columns>
                            <asp:BoundField DataField="Employee_Id" HeaderText="Employee Id" InsertVisible="False" ReadOnly="True" SortExpression="Employee_Id" />
                            <asp:BoundField DataField="first_name" HeaderText="First Name" SortExpression="first_name" />
                            <asp:BoundField DataField="last_name" HeaderText="Last Name" SortExpression="last_name" />
                            <asp:BoundField DataField="email_id" HeaderText="Email Id" ReadOnly="True" SortExpression="email_id" />
                            <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                            <asp:BoundField DataField="contact_number" HeaderText="Contact Number" SortExpression="contact_number" />
                            <asp:BoundField DataField="dob" HeaderText="Date of Birth" SortExpression="dob" />
                            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                            <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
                            <asp:BoundField DataField="full_address" HeaderText="Address" SortExpression="full_address" />
                        </Columns>
                           
                    </asp:GridView>
               </div>
                      
                    
           </div>
                  </div>
            
        </div>
         </div>
         

         <br />
         <br />
         <br />
         <br />
        
    
</asp:Content>
