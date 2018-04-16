<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
        }
        .auto-style5 {
            width: 282px;
        }
        .auto-style6 {
            width: 191px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    Please fill the following feedback form.
    <table class="auto-style3">
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Enter Your Name:</td>
            <td class="auto-style5">
                <asp:TextBox ID="CustomeNameTextBox" runat="server"></asp:TextBox>
                <input type="text" id="CustomerName" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Enter Your Contact Number:</td>
            <td class="auto-style5">
                <asp:TextBox ID="CustomerPhoneTextBox" runat="server"></asp:TextBox>
                <input type="text" id="CustomerPhone" />
                
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">Enter Your Feedback:</td>
            <td class="auto-style5">
                <asp:TextBox ID="FeedbackTextBox" runat="server" Height="80px" TextMode="MultiLine" Width="210px"></asp:TextBox>
                <textarea id="CustomerFeedback" rows="4" cols="50"></textarea>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">
                <asp:Label ID="DisplayLabel" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                <asp:Button ID="FeedbackButton" runat="server" Text="Submit Feedbak" />
                <button id="FeedbackButton1" value="Send Feedback" onclick="insertData();">Send Feedback</button>
            </td>
            <td class="auto-style5">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    <script type="text/javascript">
        function insertData()
        {
           
            var customerName = document.getElementById("CustomerName").value;
            var customerPhone = document.getElementById("CustomerPhone").value;
            var customerFeedback = document.getElementById("CustomerFeedback").value;

            var xmlhttp = new XMLHttpRequest();

            xmlhttp.open("GET", "Feedback.aspx?custName="+customerName+"&custPhone="+customerPhone+"&custFeedback="+customerFeedback, false);
            xmlhttp.send(null);

            document.getElementById("CustomerName").value ="";
            document.getElementById("CustomerPhone").value = "";
            document.getElementById("CustomerFeedback").value = "";

            alert("Thanks For Your Feedback");
        }
    </script>
</asp:Content>

