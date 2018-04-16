using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //double totalCharge = 0;
        //Session state
        //if (Session["TotalCharge"] != null)
        //{ totalCharge = Convert.ToDouble(Session["TotalCharge"]); }

        if (Session["tableBookingDate"] != null)
        {
            TableBookingDateLabel.Text = Session["tableBookingDate"].ToString();
        }


        if (Session["tableNumberOfPeople"] != null)
        {
            NumberOfPeopleLabel.Text = Session["tableNumberOfPeople"].ToString();
        }

        if (Session["tablePhone"] != null)
        {
            TablePhoneLabel.Text = Session["tablePhone"].ToString();

        }

        //Using Query String method 
        TableBookingNameLabel.Text = Request.QueryString["CustName"];

        //totalCarChargeLabel.Text = totalCharge.ToString("C2");
    }
}