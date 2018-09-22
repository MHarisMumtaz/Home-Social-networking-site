using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.IO;

namespace Home
{
    public partial class Step1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User_Prof.FillCombo(DropDownList5, "Home_Category");
                User_Prof.FillCombo(DropDownList1, "Profession");
            }
        }
    
        protected void FinishBtn_Click(object sender, EventArgs e)
        {
            User_Prof._Home_name = TextBox1.Text;
            User_Prof._HomeCat_ID = Convert.ToInt16(DropDownList5.SelectedValue);
            User_Prof._Prof_ID = Convert.ToInt16(DropDownList1.SelectedValue);
            User_Prof.Create();
            User_Prof.AddPic();
            User_Prof.AddDate();
            Session["loginuser"] = User_Prof.GetId();
            Response.Redirect("Profile.aspx");
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string FileName = Path.GetFileName(selectedfile.PostedFile.FileName);
            User_Prof._Pic_name = FileName;
            if (selectedfile.HasFile)
            {
                selectedfile.SaveAs(MapPath("~/Userpics/" + FileName));
                if (File.Exists(MapPath("~/Userpics/" + FileName)))
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('File has been successfully uploaded');", true);
                }
                Image2.ImageUrl = "~/Userpics/" + FileName;
            }
           
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
         
        }
    }
}