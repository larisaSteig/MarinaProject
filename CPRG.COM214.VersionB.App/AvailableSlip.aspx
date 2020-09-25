<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AvailableSlip.aspx.cs" Inherits="CPRG.COM214.VersionB.App.AvailableSlip"  %>

<%@ Register Src="~/Controls/DocksList.ascx" TagPrefix="uc1" TagName="DocksList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron" >
           
            <div class ="row">
                 <div class ="col">
                    <h3> Available Slips based on Dock </h3>
                    <h5> Pick the dock: 
                       <span style="font-size:medium"> <uc1:DocksList runat="server" ID="DocksList" AllowPostBack="True" /></span>
                    </h5>    
    
                    <p>
                        <asp:Label ID="lblWater" runat="server" Text="">Water Service</asp:Label>
                        <asp:TextBox ID="txtWater" runat="server" style="margin-left: 55px" Width="166px"></asp:TextBox>
                    </p>
                    <p>
                        <asp:Label ID="lblElectrical" runat="server" Text="">Electrical Service</asp:Label>
                        <asp:TextBox ID="txtElectrical" runat="server" style="margin-left: 35px" Width="160px"></asp:TextBox>
                    </p>
                </div>
             <div class ="col">
                    <h4 class="text-center"> Available Slips </h4>
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" class="col-4" style="left: -155px; top: 0px; width: 30%">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                    <p>
                        &nbsp;</p>
                    <p>
                        &nbsp;</p>
              </div> 
         </div>
  </div>
    </asp:Content>
