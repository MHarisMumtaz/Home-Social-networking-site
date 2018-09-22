using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Home
{
    public partial class Profile : System.Web.UI.Page
    {
        video Video = new video();
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User_Prof.FillCombo(DropDownList1, "Video_Category");
                 int uid = (int)Session["loginuser"];
                 Video.FetchVideos(uid, videos_repeator);
               
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["loginuser"] != null)
            {
                int uid = (int)Session["loginuser"];
                Video.USER_ID = uid;
                Video.Title = TextBox4.Text;
                Video.Description = TextBox3.Text;
                Video.VideoCatagory = Convert.ToInt16(DropDownList1.SelectedValue);
                string FileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
                Video.Loc = FileName;
                Video.Upload();
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(MapPath("~/UserVideos/" + FileName));
                    if (File.Exists(MapPath("~/UserVideos/" + FileName)))
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('File has been successfully uploaded');", true);
                    }
                }
            }
        }
       
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {
           
        }
    }
}