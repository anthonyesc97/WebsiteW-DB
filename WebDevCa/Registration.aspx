<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WebDevCa.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <div class ="reginfo">
    <p>Enter Your Details Below.</p>
        <p>&nbsp;&nbsp;<br />
        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        &nbsp;<asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        &nbsp;<asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
        &nbsp;<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:HyperLink ID="hylLogin" runat="server" NavigateUrl="~/Login.aspx">Already Have an Account? Login Here.</asp:HyperLink>
    </p>
        <p>
            
            <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click1" Text="Register" />
            
    </p>
            <div class="reglogo">
            <asp:Image ID="imgReg" runat="server" ImageUrl="~/images/hbakery.png" Width="84px" Height="69px" />
            </div>
    </div>
</asp:Content>
