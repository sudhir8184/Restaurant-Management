<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 134px;
        }
        .auto-style5 {
        }
        .auto-style6 {
            width: 128px;
        }
        .auto-style7 {
            width: 292px;
        }
        .auto-style8 {
            width: 292px;
            height: 23px;
        }
        .auto-style9 {
            width: 134px;
            height: 23px;
        }
        .auto-style10 {
            width: 128px;
            height: 23px;
        }
        .auto-style11 {
            height: 23px;
        }
        .auto-style12 {
            width: 292px;
            height: 30px;
        }
        .auto-style13 {
            width: 134px;
            height: 30px;
        }
        .auto-style14 {
            width: 128px;
            height: 30px;
        }
        .auto-style15 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <p>
        Thanks for Choosing FoodStop.com</p>
    <p>
        Fill out the following form to book Your Table.</p>
    <table class="auto-style3">
        <tr>
            <td class="auto-style7">Enter Your Booking Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="TableBookingNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Contact Number</td>
            <td class="auto-style4">
                <asp:TextBox ID="TablePhoneTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Number of People for you want to book a table</td>
            <td class="auto-style4">
                <asp:TextBox ID="TableNumberOfPeopleTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Select Restaurant </td>
            <td class="auto-style4">
                <asp:DropDownList ID="TableRestaurantDropDownList" runat="server" Height="16px" Width="126px">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Select Your Booking Date</td>
            <td class="auto-style4">
                <asp:TextBox ID="TableBookingCalendarTextBox" runat="server" Height="18px" Width="85px"></asp:TextBox>
                <asp:ImageButton ID="TableBookCalendarImageButton" runat="server" ImageUrl="~/Images/calendar.png" OnClick="TableBookCalendarImageButton_Click" />
                <asp:Calendar ID="TableBookingCalendar" runat="server" OnSelectionChanged="TableBookingCalendar_SelectionChanged"></asp:Calendar>
            </td>
            <td class="auto-style6">
                <asp:Label ID="TableBookingDateLabel" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">
                <asp:Button ID="BookTableButton" runat="server" OnClick="BookTableButton_Click" Text="Book Table" Width="130px" />
            </td>
            <td class="auto-style13">
                <asp:Button ID="CancelTableButton" runat="server" Text="Cancel" Width="115px" />
            </td>
            <td class="auto-style14"></td>
            <td class="auto-style15"></td>
            <td class="auto-style15"></td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="5">Fill out the following form to book Your Room</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Enter Your Booking Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="RoomBookingNameTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Contact Number </td>
            <td class="auto-style4">
                <asp:TextBox ID="RoomPhoneTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Select Restaurant</td>
            <td class="auto-style4">
                <asp:DropDownList ID="RoomRestaurantDropDownList" runat="server" Height="16px" Width="120px">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
            <td class="auto-style11"></td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style7">Select Room</td>
            <td class="auto-style4">
                <asp:DropDownList ID="RoomDropDownList" runat="server" Height="16px" Width="123px">
                </asp:DropDownList>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Select Your Booking Date</td>
            <td class="auto-style4">
                <asp:TextBox ID="RoomBookingCalendarTextBox" runat="server" Height="17px" Width="88px"></asp:TextBox>
                <asp:ImageButton ID="RoomBookCalendarImageButton" runat="server" ImageUrl="~/Images/calendar.png" OnClick="RoomBookCalendarImageButton_Click" />
                <asp:Calendar ID="RoomBookingCalendar" runat="server" OnSelectionChanged="RoomBookingCalendar_SelectionChanged"></asp:Calendar>
            </td>
            <td class="auto-style6">
                <asp:Label ID="RoomBookingDateLabel" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Number of Days You Want to book a Room</td>
            <td class="auto-style4">
                <asp:TextBox ID="RoomNumberOfDaysTextBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Button ID="RoomBookButton" runat="server" Text="Book Room" OnClick="RoomBookButton_Click" />
            </td>
            <td class="auto-style4">
                <asp:Button ID="RoomCancelButton" runat="server" Text="Cancel" />
            </td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

