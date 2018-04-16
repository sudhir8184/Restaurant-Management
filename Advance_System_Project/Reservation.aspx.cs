using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;

public partial class _Default : System.Web.UI.Page
{
    BusinessLayerClass ObjCustBLL = new BusinessLayerClass();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void bookTableButton_Click(object sender, EventArgs e)
    {
        //To insert data
//        ObjCustBLL.InsertCustomer(customerNameTextBox.Text, numberOfPeopleTextBox.Text);
    }
}