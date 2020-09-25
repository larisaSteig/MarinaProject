<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CPRG.COM214.VersionB.App.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
     <div class="jumbotron text-center" >
        <h3>Login Page</h3>
         <table class ="table col-6 text-center" style="left: -32px; top: 0px; width: 46%; margin-top: 7px;">

        <tr>
            <td style ="width:150px; color:black">First Name:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFirstName" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td style ="width:150px;color:black"">Last Name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
             <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLastName" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
       </table>
         <div class="controls">
            <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" style="margin-top: 32" />
            <p>
<asp:Label ID="lblMessage" runat="server" Text="Register to be able to lease with us!"><a href="/Register" runat="server">Register</a></asp:Label>
            </p> 
             <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="117px" />
         </div>
          
   
    </div>
</asp:Content>
