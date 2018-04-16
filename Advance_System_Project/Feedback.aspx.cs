using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BusinessLogicLayer;

public partial class _Default : System.Web.UI.Page
{
    //private string stringconn = ConfigurationManager.ConnectionStrings["FoodStopData"].ConnectionString;

    //string cName, cPhone, cFeedback;
    protected void Page_Load(object sender, EventArgs e)
    {
        BusinessLayerClass ObjFeedbackBLL1 = new BusinessLayerClass();
        //for insert record
        ObjFeedbackBLL1.InsertCustomerFeedback1(Request.QueryString["custName"].ToString(), Request.QueryString["custPhone"].ToString(), Request.QueryString["custFeedback"].ToString());
        
        //SqlConnection sqlconn = new SqlConnection(stringconn);

        //cName = Request.QueryString["custName"].ToString();
        //cPhone = Request.QueryString["custPhone"].ToString();
        //cFeedback = Request.QueryString["custFeedback"].ToString();

        ////Insert customer booking database
        //SqlDataAdapter sqladapter = new SqlDataAdapter("insert into FeedbackData (Customer_Name, Email_Id, Feedback) values ('" + cName + "','" + cPhone + "','" + cFeedback + "')", sqlconn);
        //DataTable DT = new DataTable();
        //sqladapter.Fill(DT);

        

    }
}