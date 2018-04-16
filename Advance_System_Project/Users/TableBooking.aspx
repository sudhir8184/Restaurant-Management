<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="TableBooking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <p><h2>
        Congratulation Your Table is Booked.<br />
        Thank You for Booking Table with FoodStop.<br /><br/>
        Your Booking Details are as Follows:<br /></h2>
        Customer Name:<asp:Label ID="TableBookingNameLabel" runat="server"></asp:Label>
        <br />
        Table Booking Date:<asp:Label ID="TableBookingDateLabel" runat="server"></asp:Label>
        <br />
        Contact Number:<asp:Label ID="TablePhoneLabel" runat="server"></asp:Label>
        <br />
        Number of People:<asp:Label ID="NumberOfPeopleLabel" runat="server"></asp:Label>
        <br />
        <asp:HyperLink ID="BookTableHyperLink" runat="server" NavigateUrl="~/Users/Booking.aspx">Book Another Table</asp:HyperLink>
        </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="messageLabel" runat="server"></asp:Label>
    </p>
    <asp:HyperLink ID="logoutHyperLink" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
</asp:Content>

