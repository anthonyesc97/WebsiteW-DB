<%@ Page Title="Login" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebDevCa.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="logininfo">
    <p>
        &nbsp;</p>
    <p>
        <asp:Image ID="imgLogin" runat="server" Height="33px" ImageUrl="~/images/Heartlogo.png" Width="41px" />
        <br />
        <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="txtuserlog" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="txtuserpass" runat="server" EnableViewState="False" TextMode="Password"></asp:TextBox>
    </p>
        <p>
            <asp:Label ID="lblloginerror" runat="server" Font-Bold="True" ForeColor="Red" Text="Incorrect Details Entered. Try Again!"></asp:Label>
    </p>
        <p>
            <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" />
    </p>
        <p>
            <asp:HyperLink ID="hylRegister" runat="server" NavigateUrl="~/Registration.aspx">Register Here.</asp:HyperLink>
    </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
     </div>
</asp:Content>
