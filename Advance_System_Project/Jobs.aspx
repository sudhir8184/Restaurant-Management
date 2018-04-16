<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 207px;
        }
        .auto-style5 {
            width: 207px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
        .auto-style7 {
            width: 177px;
        }
        .auto-style8 {
            height: 23px;
            width: 177px;
        }
        .auto-style10 {
            height: 23px;
            width: 214px;
        }
        .auto-style11 {
            width: 214px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">

<html>
    <body>
        <h2>Search Openings</h2>

        <h3>Search our openings by selecting below criteria.</h3>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">Enter Job Id #</td>
                <td class="auto-style7">
                    <asp:TextBox ID="IdTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">
                    
                    <asp:CompareValidator ID="JobIdCompareValidator" runat="server" ControlToValidate="IdTextBox" ErrorMessage="Please Enter Correct JOB ID" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Enter Job Role</td>
                <td class="auto-style8">
        <asp:TextBox ID="RoleTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10"></td>
                <td class="auto-style6"></td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Enter Job Location</td>
                <td class="auto-style7">
                    <asp:TextBox ID="LocationTextBox" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">
        <asp:Button ID="SearchButton" runat="server" Text="Search" OnClick="SearchButton_Click" />


                </td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body></html>

        <asp:GridView ID="JobGridView" runat="server">
        </asp:GridView>




    <br />
    Upload your Resume / CV Below.!
    <br />
    <br />
    <asp:FileUpload ID="ResumeFileUpload" runat="server" />
    <asp:Button ID="UploadButton" runat="server" OnClick="UploadButton_Click" Text="Upload" />
    <br />
    <br />
    <asp:Label ID="ErrorLabel" runat="server"></asp:Label>
    <br />




</asp:Content>