<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lease.aspx.cs" Inherits="CPRG.COM214.VersionB.App.Secure.Lease" %>

<%@ Register Src="~/Controls/DocksList.ascx" TagPrefix="uc1" TagName="DocksList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class ="container">
        <div class ="row">
            <div class="col-4">
                    <h3>Leasing page</h3> 
                <p>Pick the Dock:
                    <uc1:DocksList runat="server" ID="DocksList" /> 
                </p>
                    
            </div>
             <div class="col-4">
                    <h3>Pick a Slip</h3>
                     <p>
                        <asp:DropDownList ID="dropDownSlips" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dropDownSlips_SelectedIndexChanged">
                        </asp:DropDownList>
                     </p>
                     
                        <table class="table" style="width: 34%">
                        <tr>
                            <td>Slip ID</td>
                            <td>
                                <asp:TextBox ID="uxSlipID" runat="server"></asp:TextBox>
                        </tr>
                        <tr>
                            <td>Width: </td>
                            <td>
                                <asp:TextBox ID="uxWidth" runat="server"></asp:TextBox>
                        </tr>
                        <tr>
                            <td>Length: </td>
                            <td>
                                <asp:TextBox ID="uxLength" runat="server"></asp:TextBox>
                        </tr>
                        <tr>
                            <td>DockID: </td>
                            <td>
                                <asp:TextBox ID="uxDockID" runat="server"></asp:TextBox>
                        </tr>
                        </table>
                  <div class="col-4">
 <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:GridView ID="gridViewSlipUpdate" runat="server" style="margin-left: 149px"></asp:GridView>

    <asp:GridView ID="gridViewLease" runat="server">
    </asp:GridView>

    <asp:Button ID="btnLease" runat="server" Text="Lease" OnClick="btnLease_Click" />
                   </div>
             </div>
        </div>
    </div>
    
    

   
  
   
    
   

    </asp:Content>
