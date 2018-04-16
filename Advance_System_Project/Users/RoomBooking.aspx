<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="RoomBooking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
        <p><h2>
        Congratulation Your Room is Booked.<br />
        Thank You for Booking Room with FoodStop.<br /><br/>
        Your Booking Details are as Follows:<br /></h2>
        Customer Name:<asp:Label ID="RoomBookingNameLabel" runat="server"></asp:Label>
        <br />
        Room Booking Date:<asp:Label ID="RoomBookingDateLabel" runat="server"></asp:Label>
        <br />
        Contact Number:<asp:Label ID="RoomPhoneLabel" runat="server"></asp:Label>
        <br />
        Number of Room Booking Day:<asp:Label ID="RoomNumberOfDaysLabel" runat="server"></asp:Label>
        <br />
        </p>
    <p>
        <asp:HyperLink ID="BookAnotherRoomHyperLink" runat="server" NavigateUrl="~/Users/Booking.aspx">Book Another Room</asp:HyperLink>
</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="messageLabel" runat="server"></asp:Label>
    </p>
    <asp:HyperLink ID="logoutHyperLink" runat="server" NavigateUrl="~/Home.aspx">Logout</asp:HyperLink>
</asp:Content>

