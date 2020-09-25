<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Leasing.aspx.cs" Inherits="CPRG.COM214.VersionB.App.Leasing" %>

<%@ Register Src="~/Controls/DocksList.ascx" TagPrefix="uc1" TagName="DocksList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



 <div class ="jumbotron">
     <div class ="row">
         <div class ="col-6">
             <h3>Leasing Page</h3>
             <h5>Pick available dock: 
                 <span style="font-size:medium"><uc1:DocksList runat="server" ID="DocksList" AllowPostBack="True"/></span>
             </h5>
                  <p>
                        <asp:Label ID="lblWater" runat="server" Text="">Water Service</asp:Label>
                        <asp:TextBox ID="txtWater" runat="server" style="margin-left: 59px" Width="149px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="lblElectrical" runat="server" Text="">Electrical Service</asp:Label>
                        <asp:TextBox ID="txtElectrical" runat="server" style="margin-left: 35px" Width="154px"></asp:TextBox>
                    </p>
             </div>
              <div class ="col-6">
               <h5>Pick available slip:
                   <span style="font-size:medium"> <asp:DropDownList ID="dropDownSlips" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dropDownSlips_SelectedIndexChanged">
                    </asp:DropDownList></span>
                </h5>
                    <table class="table col-4" style="width: 28%; left: -340px; top: 0px;">
                    <tr>
                        <td>Slip ID</td>
                        <td>
                            <asp:TextBox ID="uxSlipID" runat="server" Width="66px"></asp:TextBox>
                    </tr>
                    <tr>
                        <td>Width: </td>
                        <td>
                            <asp:TextBox ID="uxWidth" runat="server" Width="67px"></asp:TextBox>
                    </tr>
                    <tr>
                        <td>Length: </td>
                        <td>
                            <asp:TextBox ID="uxLength" runat="server" Width="68px"></asp:TextBox>
                    </tr>
                    
                </table>
           
               <asp:Button ID="btnLease" class="btn btn-success text-center" runat="server" Text="Lease" OnClick="btnLease_Click" />
                
         </div>
            
             <div class="col text-center">
                <asp:GridView ID="gridViewLease" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </div>
     </div>
</div>
</asp:Content>
