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

        if (Session["roomBookingDate"] != null)
        {
            RoomBookingDateLabel.Text = Session["roomBookingDate"].ToString();
        }


        if (Session["roomNumberOfDays"] != null)
        {
            RoomNumberOfDaysLabel.Text = Session["roomNumberOfDays"].ToString();
        }

        if (Session["roomPhone"] != null)
        {
            RoomPhoneLabel.Text = Session["roomPhone"].ToString();

        }

        //Using Query String method 
        RoomBookingNameLabel.Text = Request.QueryString["RoomCustName"];

        //totalCarChargeLabel.Text = totalCharge.ToString("C2");
    }
}

