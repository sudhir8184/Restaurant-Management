using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogicLayer;
using System.Text;


public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void SearchButton_Click(object sender, EventArgs e)
    {
        BusinessLayerClass ObjBLLJob = new BusinessLayerClass();

        //for select record and bind to gridview
        //ObjBLLJob.ShowJobDetail(IdTextBox.Text);

        JobGridView.DataSource = ObjBLLJob.ShowJobDetail(IdTextBox.Text, RoleTextBox.Text, LocationTextBox.Text);
        JobGridView.DataBind();
    }

    protected void UploadButton_Click(object sender, EventArgs e)
    {
        if (ResumeFileUpload.HasFile){

            string ext = Path.GetExtension(ResumeFileUpload.FileName);

            if (ext == ".pdf" || ext == ".docx")
            {
                string path = Server.MapPath("Resume_Data//");
                ResumeFileUpload.SaveAs(path + ResumeFileUpload.FileName);

                ErrorLabel.Text= "Thanks for sumnitting your Resume / CV. Our Recruiting team will contact you soon if your skills matches with our requirement";
            }
            else {

                ErrorLabel.Text= "Please upload only pdf (.pdf) or word (.docx) files..!!";
            }
        }

        else {

            ErrorLabel.Text= "Please Upload Resume / CV";
        }
    }
}