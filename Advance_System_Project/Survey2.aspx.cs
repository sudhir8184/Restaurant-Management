using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void FeedbackButton_Click(object sender, EventArgs e)
    {
        BusinessLayerClass ObjFeedbackBLL = new BusinessLayerClass();
        //for insert record
        ObjFeedbackBLL.InsertCustomerFeedback(CustomerNameTextBox.Text, CustomerEmailTextBox.Text, FeedbackTextBox.Text);

        FeedbackMsgLabel.Text = "Thanks for your valuable Feedback..!!";

        CustomerNameTextBox.Text = "";
        CustomerEmailTextBox.Text = "";
        FeedbackTextBox.Text = "";

        SurveyPanel.Visible = true;
    }
}