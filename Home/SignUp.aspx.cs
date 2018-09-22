using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User_Prof.FillCombo(DropDownList5, "Gender");
                User_Prof.FillCombo(DropDownList4, "Country");
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            User_Prof._Uname = TextBox1.Text;
            User_Prof._UFname = TextBox2.Text;
            User_Prof._Email = TextBox3.Text;
            User_Prof._Password = TextBox4.Text;
            User_Prof._DOB = DropDownList1.SelectedValue +"/" + DropDownList2.SelectedValue + "/" + DropDownList3.SelectedValue;
            User_Prof._Gender_id = Convert.ToInt16(DropDownList5.SelectedValue);
            User_Prof._Country_id = Convert.ToInt16(DropDownList4.SelectedValue);
            Response.Redirect("Step1.aspx");
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
    }
}