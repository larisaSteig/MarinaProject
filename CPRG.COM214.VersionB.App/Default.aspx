<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CPRG.COM214.VersionB.App._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron text-center" >
            <h4 class="card-title h4 pb-2"><strong>Welcome to Inland Marina!</strong></h4>
            <div class="view overlay my-4">
                <img src="https://images.unsplash.com/photo-1592661996676-a384e8ed73c5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60" class="img-fluid" alt="">
                <a href="#">
                  <div class="mask rgba-white-slight"></div>
                </a>
            </div>
            <p class="indigo-text h5 mb-4">Welcome to Inland Marina located on the south shore Inland Lake, just a small commute from major centers in the south west.</p>
            <hr class="my-4">   
            <p> Inland Marina was established in the 1967 shortly after Inland Lake was created as a result of the South West damn.  From its humble beginnings, it has grown to be the largest marina on Inland Lake.  Due to the warm climate that extends year round, Inland Lake has become a popular tourist destination in the south west.  Boat owners from California, Arizona, Nevada, and Utah are attracted to the area.  Inland Marina has 90 slips ranging in size from 16 to 32 feet in length.  Dock services include electrical and fresh water.</p>
            <p><a  href="/AvailableSlip" class="btn btn-warning btn-lg">Available Slips! &raquo;</a></p>
      
    </div>

</asp:Content>

