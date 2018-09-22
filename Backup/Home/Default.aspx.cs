using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{
    public partial class Default : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            User_Prof._Email = Emailtxt.Text;
            User_Prof._Password = Password.Text;
            int chk = User_Prof.Login();
            if (chk == 0)
            {
                Session["loginuser"] = User_Prof.GetId();
                Response.Redirect("Profile.aspx");
            }

        }
    }
}
