<%@ Page Title="Online Shop" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Myshop.aspx.cs" Inherits="WebDevCa.Myshop" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 124px;
    }
        .auto-style2 {
            height: 124px;
            width: 40px;
        }
        .auto-style3 {
            width: 40px;
        }
        .auto-style4 {
            width: 74px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <br />
        <asp:Button ID="btnLogout" runat="server" BackColor="Red" OnClick="btnLogout_Click" Text="Log-out" />
     <div class ="saleinfo">
         <p>Add some of our customer favourites to your order!</p>
     </div>
        
        <table style="width:40%;">
            <tr>    <%--Add Coffee to product table in DB--%>
                <td class="auto-style1"><asp:Button ID="btnAddCoffee" runat="server" Text="Add To Cart" OnClick="btnAddCoffee_Click" /></td>
                <td>
                    <asp:Button ID="btnRemoveCoffee" runat="server" Text="Remove" OnClick="btnRemoveCoffee_Click" />
                </td>
                <td class="auto-style1"><p>
                <asp:TextBox ID="txtAddCoffee" runat="server" Width="120px" ReadOnly="True">Coffee</asp:TextBox></td>
                <td><asp:TextBox ID="txtCoffeeqnty" runat="server" Width="120px">Insert Quantity</asp:TextBox></td>
                <td class="auto-style2"><p class="auto-style4">
                    £<asp:TextBox ID="txtCoffeeprice" runat="server" ReadOnly="True" Width="20px">3</asp:TextBox>
                    </p></td>
                <td class="auto-style1"><img src="images/coffeeart.png" style="height: 120px; width: 150px" /></td>  

            </tr>
            <tr>    <%--Add Croissant to product table in DB--%>
                <td><asp:Button ID="btnAddCroiss" runat="server" Text="Add To Cart" OnClick="btnAddCroiss_Click" /></td>
                <td>
                    <asp:Button ID="btnRemoveCroiss" runat="server" OnClick="btnRemoveCroiss_Click" Text="Remove" />
                </td>
                <td><asp:TextBox ID="txtAddCroiss" runat="server" Width="120px" ReadOnly="True">Croissant</asp:TextBox></td>
                <td><asp:TextBox ID="txtCroissqnty" runat="server" Width="120px">Insert Quantity</asp:TextBox></td>
                <td class="auto-style3"><p>
                    £<asp:TextBox ID="txtCroissprice" runat="server" ReadOnly="True" Width="20px">2</asp:TextBox>
                    </p></td>
                <td><img src="images/pastrycroissant.png" style="height: 120px; width: 150px" /></td>        
            </tr>
            <tr>  <%--Add Cake to product table in DB--%>
                <td><asp:Button ID="btnAddCake" runat="server" Text="Add To Cart" OnClick="btnAddCake_Click" /></td>
                <td>
                    <asp:Button ID="btnRemoveCake" runat="server" OnClick="btnRemoveCake_Click" Text="Remove" />
                </td>
                <td><asp:TextBox ID="txtAddCake" runat="server" Width="120px" ReadOnly="True">Cake</asp:TextBox></td>
                <td><asp:TextBox ID="txtCakeQnty" runat="server" Width="120px">Insert Quantity</asp:TextBox></td>
                <td class="auto-style3"><p>
                    £<asp:TextBox ID="txtCakeprice" runat="server" ReadOnly="True" Width="20px">3</asp:TextBox>
                    </p></td>
                <td><img src="images/choccake.png" style="height: 120px; width: 150px" /></td>
            </tr>
        </table>
        
        <br />
        <div class="ordersinfo">
            <p>
                <asp:Button ID="btnShowPrice" runat="server" OnClick="btnShowPrice_Click" Text="Show Total Price" />
&nbsp; </p>
            <p>£<asp:Label ID="lblTotalprice" runat="server"></asp:Label>
            </p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>
                <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Place Order" />
            </p>
            <p>View your Orders Below &nbsp;<asp:GridView ID="dgvOrders" runat="server" Width="685px" AllowPaging="True" Height="197px" OnSelectedIndexChanged="gvOrders_SelectedIndexChanged">
                </asp:GridView>
                <asp:Button ID="btnViewOrders" runat="server" OnClick="btnViewOrders_Click" Text="View Your Orders" />
            </p>
        </div>
        
        <br />
        
</asp:Content>
