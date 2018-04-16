using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    //Variables to store the number of people, Room booking Days, table booking name, room booking name and contact number 
    //double tableNumberOfPeople, roomBookingDays;
 //   string tableBookingName, tablePhone, roomBookingName, roomPhone;

//    private string stringconn = ConfigurationManager.ConnectionStrings["FoodStopData"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        //Calender is Invisible by default
        TableBookingCalendar.Visible = false;
        RoomBookingCalendar.Visible = false;
    }

    protected void TableBookCalendarImageButton_Click(object sender, ImageClickEventArgs e)
    {
        //Table Booking calender settings to make calender visible and visible when we click on calender ikon
        if (TableBookingCalendar.Visible)
        {
            TableBookingCalendar.Visible = false;
        }
        else
        {
            TableBookingCalendar.Visible = true;
        }
    }

    protected void RoomBookCalendarImageButton_Click(object sender, ImageClickEventArgs e)
    {
        //Room Booking calender settings to make calender visible and visible when we click on calender ikon
        if (RoomBookingCalendar.Visible)
        {
            RoomBookingCalendar.Visible = false;
        }
        else
        {
            RoomBookingCalendar.Visible = true;
        }
    }


    protected void RoomBookingCalendar_SelectionChanged(object sender, EventArgs e)
    {
        //Room Bookingcalender settings to make calender visible and visible when we click on calender ikon
        RoomBookingCalendarTextBox.Text = RoomBookingCalendar.SelectedDate.ToLongDateString();
        RoomBookingCalendar.Visible = false;

        if (!(RoomBookingCalendar.SelectedDate < DateTime.Now.Add(new TimeSpan(0, 0, 0, 0))))
        {
            RoomBookingDateLabel.Text = "";

        }
        else
        {
            RoomBookingDateLabel.Text = "You can't book your Room for this date. Please book the Room from tommorrow.";
            RoomBookingCalendarTextBox.Text = "";
        }
    }

    protected void TableBookingCalendar_SelectionChanged(object sender, EventArgs e)
    {
        //Table Bookingcalender settings to make calender visible and visible when we click on calender ikon
        TableBookingCalendarTextBox.Text = TableBookingCalendar.SelectedDate.ToLongDateString();
        TableBookingCalendar.Visible = false;

        if (!(TableBookingCalendar.SelectedDate < DateTime.Now.Add(new TimeSpan(0, 0, 0, 0))))
        {
            TableBookingDateLabel.Text = "";

        }
        else
        {
            TableBookingDateLabel.Text = "You can't book your Table for this date. Please book the Table from tommorrow.";
            TableBookingCalendarTextBox.Text = "";
        }
    }


    protected void BookTableButton_Click(object sender, EventArgs e)
    {
        // Variable to store the values 
        double TableNumberOfPeople;
        string TableBookingName, TablePhone, TableBookingDate;

        //Parsing the value entered into the quantity text Box
        
        TablePhone = TablePhoneTextBox.Text.ToString();        
        try
        {

            TableNumberOfPeople = double.Parse(TableNumberOfPeopleTextBox.Text);
            TableBookingName = TableBookingNameTextBox.Text.ToString();

            DateTime startDate = TableBookingCalendar.SelectedDate;

            //calculates the total rental charge 
//            totalCharge = double.Parse(bookingDaysLabel.Text) * double.Parse(carRentLabel.Text);

            //session state to store the values/data
            TablePhone = TablePhoneTextBox.Text;
            Session["tablePhone"] = TablePhone;

            TableNumberOfPeople = double.Parse(TableNumberOfPeopleTextBox.Text);
            Session["tableNumberOfPeople"] = TableNumberOfPeople;


            //totalCharge = double.Parse(bookingDaysLabel.Text) * double.Parse(carRentLabel.Text);
            //Session["TotalCharge"] = totalCharge;

            TableBookingDate = TableBookingCalendar.SelectedDate.ToShortDateString();
            Session["tableBookingDate"] = TableBookingDate;

            
            //Query string method to redirect to Table Booking page after clicking the Book Table Button
            Response.Redirect("~/Users/TableBooking.aspx?CustName=" + TableBookingNameTextBox.Text);
        }
        catch
        {
            TableBookingDateLabel.Text = "Please Select Booking date.";
        }
    }


    protected void RoomBookButton_Click(object sender, EventArgs e)
    {
        // Variable to store the values 
        double RoomNumberOfDays;
        string RoomBookingName, RoomPhone, RoomBookingDate;

        //Parsing the value entered into the quantity text Box

        RoomPhone = RoomPhoneTextBox.Text.ToString();
        try
        {

            RoomNumberOfDays = double.Parse(RoomNumberOfDaysTextBox.Text);
            RoomBookingName = RoomBookingNameTextBox.Text.ToString();

            DateTime startDate = RoomBookingCalendar.SelectedDate;

            //calculates the total rental charge 
            //            totalCharge = double.Parse(bookingDaysLabel.Text) * double.Parse(carRentLabel.Text);

            //session state to store the values/data
            RoomPhone = RoomPhoneTextBox.Text;
            Session["roomPhone"] = RoomPhone;

            RoomNumberOfDays = double.Parse(RoomNumberOfDaysTextBox.Text);
            Session["roomNumberOfDays"] = RoomNumberOfDays;


            //totalCharge = double.Parse(bookingDaysLabel.Text) * double.Parse(carRentLabel.Text);
            //Session["TotalCharge"] = totalCharge;

            RoomBookingDate = RoomBookingCalendar.SelectedDate.ToShortDateString();
            Session["roomBookingDate"] = RoomBookingDate;


            //Query string method to redirect to Table Booking page after clicking the Book Table Button
            Response.Redirect("~/Users/RoomBooking.aspx?RoomCustName=" + RoomBookingNameTextBox.Text);
        }
        catch
        {
            RoomBookingDateLabel.Text = "Please Select Booking date.";
        }
    }
}