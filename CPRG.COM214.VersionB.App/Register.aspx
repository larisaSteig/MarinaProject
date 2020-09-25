<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="CPRG.COM214.VersionB.App.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center" >
        <h3> Registration Form</h3>
    <table class ="table col-6 text-center" style="left: -32px; top: 0px; width: 46%; margin-top: 7px;">
        <tr>
            <td style ="width:150px; color:black">First Name:</td>
            <td style="width: 315px">
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox></td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name is required" ControlToValidate="txtFirstName" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td style ="width:150px;color:black"">Last Name</td>
            <td style="width: 315px">
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Last Name is required" ControlToValidate="txtLastName" ForeColor="Red">*</asp:RequiredFieldValidator> </td>
        </tr>
        <tr>
            <td style ="width:150px;color:black"">City</td>
            <td style="width: 315px">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="City is required" ControlToValidate="txtCity" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
         <tr>
            <td style ="width:150px;color:black"">Phone</td>
            <td style="width: 315px">
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
             <td>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Phone is required" ControlToValidate="txtPhone" ForeColor="Red">*</asp:RequiredFieldValidator></td>
        </tr>
        
        <tr>
            <td colspan="2">
                <asp:Button ID="btnSubmit" class="btn btn-success" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" Height="66px" style="margin-top: 49px" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                  <asp:Label ID="lblMessage" runat="server" Text="You will be redirected to Login Page upon succesfull registration"></asp:Label>
            </td>
        </tr>
    </table>
        
    </div>
    </asp:Content>
