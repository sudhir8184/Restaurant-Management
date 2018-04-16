<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Listing.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
        }
        .auto-style5 {
            width: 148px;
        }
        .auto-style6 {
            width: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <p>
        Welcome to FoodStop.Com</p>
    <p>
        Thank for visiting FoodStop.com. Are you looking for Restaurants then what are you waiting for.! Just Click View Restaurants ands you can search restaurants by Location, Name or by type of food. Enjoy the Food by viewing menues, booking your Table and visiting the place / restaurant which you would like to.</p>
    <table class="auto-style3">
        <tr>
            <td class="auto-style4">Enter Restaurant Name</td>
            <td class="auto-style5">
                <asp:TextBox ID="RestaurantNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>Enter Location</td>
            <td>
                <asp:TextBox ID="LocationTextBox" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Enter Type of Food</td>
            <td class="auto-style5">
                <asp:TextBox ID="FoodTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="RestauranatButton" runat="server" Text="View Restaurants" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="5">You can View Menues of various Restaurants Below.</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">Select Restaurant Name</td>
            <td class="auto-style5">
                <asp:DropDownList ID="ViewRestaurantDropDownList" runat="server" Height="16px" Width="136px">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="ViewMenuButton" runat="server" Text="View Menues" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:GridView ID="MenuGridView" runat="server">
                </asp:GridView>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

