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
        //for select record and bind to gridview
        //GridView1.DataSource = ObjBLL.SelectUser();
        //GridView1.DataBind();
    }
    protected void createUserButton_Click(object sender, EventArgs e)
    {
        BusinessLayerClass ObjBLL = new BusinessLayerClass();
        //for insert record
        ObjBLL.InsertNewUser(userNameTextBox.Text, passwordTextBox.Text, confirmPasswordTextBox.Text, emailIdTextBox.Text);

        //for select record and bind to gridview
        GridView1.DataSource = ObjBLL.SelectUser();
        GridView1.DataBind();

    }

}