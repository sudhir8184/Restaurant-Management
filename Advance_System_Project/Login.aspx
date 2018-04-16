<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        width: 181px;
    }
    .auto-style5 {
        width: 20px;
    }
        .auto-style6 {
            width: 181px;
            height: 23px;
        }
        .auto-style7 {
            width: 20px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <p>
    Welcome to login page.</p>
<table class="auto-style3">
    <tr>
        <td class="auto-style4">Login for Regitered Users<br />
            Please Enter Your Login Details Below:</td>
        <td class="auto-style5">&nbsp;</td>
        <td>Login forFoodStop Admin<br />
            Please Enter Your Login Details Below:</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Login ID="UsersLogin" runat="server" CreateUserText="Register" CreateUserUrl="~/Registration.aspx" TitleText="User Log In" DestinationPageUrl="~/Users/Booking.aspx">
            </asp:Login>
        </td>
        <td class="auto-style5">&nbsp;</td>
        <td>
            <asp:Login ID="AdminLogin" runat="server" TitleText="Admin Log In" DestinationPageUrl="~/Admin/FoodStopDatabase.aspx">
            </asp:Login>
        </td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7"></td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style4">Testing Data For Registered Users:</td>
        <td class="auto-style5">&nbsp;</td>
        <td>Testting Data for FoodStop Admin:</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">User Name: sudhirhebbalkar</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">User Name: FoodStop_Admin</td>
    </tr>
    <tr>
        <td class="auto-style4">Password: sudhir8184*</td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style4">Password: Admin_8184*</td>
    </tr>
    <tr>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style5">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

