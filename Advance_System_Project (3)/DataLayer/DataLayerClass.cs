using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace DataLayer
{
    public class DataLayerClass
    {
        //declare connection string
        //  private string stringconn = ConfigurationManager.ConnectionStrings["FoodStopDataConnectionString"].ToString();
        private string stringconn = ConfigurationManager.ConnectionStrings["FoodStopData"].ConnectionString;
        // OR
        //  private  string strconn = "Data Source=.\\newsqlexpress;Initial Catalog='FoodStopData';Integrated Security=True";

        //for insert record in to database
        public void InsertData(string _UserName, string _Pass, string _ConfirmPass, string _EmailId)
        {
            SqlConnection sqlconn = new SqlConnection(stringconn);
            //Insert customer booking database
            SqlDataAdapter sqladapter = new SqlDataAdapter("insert into LoginDetail (User_Name, Pass, Confirm_Pass, Email_Id) values ('" + _UserName + "','" + _Pass + "','" + _ConfirmPass + "','" + _EmailId + "')", sqlconn);
            DataTable DT = new DataTable();
            sqladapter.Fill(DT);

        }

        //Insert customer booking database
        public void InsertCustomerData(string _CustomerName, string _peopleCount)
        {
            SqlConnection sqlconn = new SqlConnection(stringconn);

            SqlDataAdapter sqladapter = new SqlDataAdapter("insert into ReservationDetails (Customer_Name, Number_of_People) values ('" + _CustomerName + "','" + _peopleCount + "')", sqlconn);
            DataTable CDT = new DataTable();
            sqladapter.Fill(CDT);
        }

        //for select record from database
        public object SelectData()
        {
            SqlConnection sqlconn = new SqlConnection(stringconn);
            SqlDataAdapter sqladapter = new SqlDataAdapter("select * from LoginDetail", sqlconn);

            DataTable DT = new DataTable();
            sqladapter.Fill(DT);
            return DT;
        }

        //for select record from database
        public object SelectCustomerData()
        {
            SqlConnection sqlconn = new SqlConnection(stringconn);
            SqlDataAdapter sqladapter = new SqlDataAdapter("select * from ReservationDetails", sqlconn);

            DataTable CDT = new DataTable();
            sqladapter.Fill(CDT);
            return CDT;
        }

        //for selecting the job records from Job databse
        //public void ShowJobData(string Job_Role)
        //{

        //    SqlConnection sqlconn = new SqlConnection(stringconn);

        //    string _Search = "select * from JobData where Job_Role = 'Cashier' ";
        //    SqlCommand comm = new SqlCommand(_Search, sqlconn);
        //    comm.Parameters.Add("@Job_Role", SqlDbType.NVarChar).Value = Job_Role;

        //    sqlconn.Open();
        //    comm.ExecuteNonQuery();

        //    SqlDataAdapter da = new SqlDataAdapter();
        //    da.SelectCommand = comm;
        //    DataSet ds = new DataSet();
        //    da.Fill(ds, "Job_Role");

        //    sqlconn.Close();
        //}

        public void ShowJobData(string Job_Role)
        {
            SqlConnection sqlconn = new SqlConnection(stringconn);
            //Insert customer booking database
            SqlDataAdapter sqladapter = new SqlDataAdapter("insert into LoginDetail (User_Name, Pass, Confirm_Pass, Email_Id) values ('" + _UserName + "','" + _Pass + "','" + _ConfirmPass + "','" + _EmailId + "')", sqlconn);
            DataTable DT = new DataTable();
            sqladapter.Fill(DT);

        }
    }
}

