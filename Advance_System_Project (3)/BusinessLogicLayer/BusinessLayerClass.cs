using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DataLayer;

namespace BusinessLogicLayer
{
    public class BusinessLayerClass
    {
     public DataLayerClass objDAL = new DataLayerClass();

    public void InsertNewUser(string _UserName, string _Pass, string _ConfirmPass, string _EmailId)
    {
    objDAL.InsertData(_UserName, _Pass, _ConfirmPass, _EmailId);
    }
 
    public object SelectUser()
    {
    return objDAL.SelectData();
    }

    public DataLayerClass objCustomerDAL = new DataLayerClass();
    public void InsertCustomer(string _CustomerName, string _peopleCount)
    {
        objCustomerDAL.InsertCustomerData(_CustomerName, _peopleCount);
    }

    public object SelectCustomerData()
    {
        return objCustomerDAL.SelectCustomerData();
    }

    //Job
    //public object SelectJobUser()
    //{
    //    return objDAL.SelectJobData();
    //}

    public void ShowJobDetail(string Job_Role)
    {
        objDAL.ShowJobData(Job_Role);
    }



    }
    
}
