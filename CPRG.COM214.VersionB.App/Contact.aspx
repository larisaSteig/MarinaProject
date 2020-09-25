<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="CPRG.COM214.VersionB.App.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" >
    <!--<h2><%: Title %>.</h2>-->
    <h3>Contact Information</h3>
    <br />
        <br />
    <address>
        Inland Lake Marina Box 123<br />
        Inland Lake, Arizona,86038 <br />
        <p>
 <abbr title="Phone">Office:</abbr>
       928-555-2234
        </p>
        <p>
  <abbr title="Phone">Leasing:</abbr>
      928-555-2235
        </p>
        <p>
 <abbr title="Phone">Fax:</abbr>
      925-555-2236
        </p>
       
    </address>

    <address>
        <strong>Email Addres:</strong>   <a href="mailto:info@inlandmarina.com">info@inlandmarina.com</a><br />
      
    </address>

    <address>
        <strong>Manager:</strong>Glenn Cooke <br />
        <strong>Slip Manager:</strong>Kimberley Carson <br />
    </address>

   </div>
</asp:Content>
