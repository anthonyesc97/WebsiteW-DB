<%@ Page Title="Homepage" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebDevCa.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="homecontainer">
    <div class="summary">
         <br />
                <div class="homelogo">
             <asp:Image ID="imghomelogo" runat="server" CssClass="auto-style1" Height="107px" Width="125px" ImageUrl="~/images/hbakery.png" />
                </div>
             <br />
            <br />
         <br />
         <p> A pop up bakery and cafe shop serving everyones favourite treats such as cakes and pastries.<br />
            Create an account with us now and browse through are delicious products!.
         </p>
         <p> 
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx">Order Now</asp:HyperLink>
         </p>
    </div>
        <div class="banner">
	    <img src="banner1.png" alt="description " id="slide">
        </div>
        <script src="slider.js"></script>
        </div>
</asp:Content>
