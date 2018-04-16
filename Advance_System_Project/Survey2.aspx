<%@ Page Title="" Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="Survey2.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="TopContentPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContentPlaceHolder" Runat="Server">
    <p>
        <h2>Thanks for visiting FoodStop</h2>
    <p>
        <asp:ScriptManager ID="SurveyScriptManager" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:UpdatePanel ID="SurveyUpdatePanel" runat="server">
        <ContentTemplate>
<br />
            <asp:Panel ID="SurveyPanel" runat="server">
                          <h3>Customer Satisfaction Survey<table class="auto-style3">
                              <caption>
                                  <h3></h3>
                                  <tr>
                                      <td class="auto-style6">Enter Your Name:</td>
                                      <td class="auto-style5">
                                          <asp:TextBox ID="CustomerNameTextBox" runat="server"></asp:TextBox>
                                      </td>
                                      <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style6">Enter Your Email Id:</td>
                                      <td class="auto-style5">
                                          <asp:TextBox ID="CustomerEmailTextBox" runat="server"></asp:TextBox>
                                      </td>
                                      <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style6">Enter Your Feedback:</td>
                                      <td class="auto-style5">
                                          <asp:TextBox ID="FeedbackTextBox" runat="server" Height="65px" TextMode="MultiLine" Width="229px"></asp:TextBox>
                                      </td>
                                      <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style4" colspan="2">
                                          <asp:Label ID="FeedbackMsgLabel" runat="server"></asp:Label>
                                      </td>
                                      <td>&nbsp;</td>
                                  </tr>
                                  <tr>
                                      <td class="auto-style6">
                                          <asp:Button ID="FeedbackButton" runat="server" OnClick="FeedbackButton_Click" Text="Submit" Width="89px" />
                                      </td>
                                      <td class="auto-style5">&nbsp;</td>
                                      <td>&nbsp;</td>
                                  </tr>
                              </caption>
                              <caption>
                                  <h3></h3>
                              </caption>
                              <caption>
                                  <h3></h3>
                                  <caption>
                                      <h3></h3>
                                      <caption>
                                          <h3></h3>
                                          <caption>
                                              <h3></h3>
                                          </caption>
                                      </caption>
                                      <caption>
                                          <h3></h3>
                                      </caption>
                                  </caption>
                              </caption>
                              <caption>
                                  <h3></h3>
                              </caption>
                          </h3>
            </asp:Panel>
        </ContentTemplate>

                
    

    </asp:UpdatePanel>



</asp:Content>

