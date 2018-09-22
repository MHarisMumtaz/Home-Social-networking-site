using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{
    public partial class UserProfile : System.Web.UI.MasterPage
    {

        HiddenField fieldid;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["loginuser"] != null)
            {
                //User_Prof.FillCombo(hcat, "Home_Category");
                int id = Convert.ToInt32(Session["loginuser"].ToString());
                User_Prof.FetchUserInfo(id);
                homebtn.Text = User_Prof._Home_name; 
                UserNamelabel.Text = User_Prof._Uname + " " + User_Prof._UFname;
                Userimage.ImageUrl = "~/Userpics/" + User_Prof._Pic_name;
                Label5.Text = User_Prof._Prof_Description;
                Label6.Text = User_Prof._Country_Name;
                Label7.Text = User_Prof._DOB;
                Label8.Text = User_Prof._Join;
                User_Prof.RetriveFriends(id, friend_rep);

            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void logoutbutton_Click(object sender, EventArgs e)
        {
            Session["loginuser"] = null;
            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            User_Prof._Home_name = TextBox1.Text;
            User_Prof._HomeCat_ID = Convert.ToInt16(hcat.SelectedValue);
            Response.Redirect("SearchResult.aspx");
        }

        protected void sbmt_Click(object sender, EventArgs e)
        {
                int id = Convert.ToInt32(Session["loginuser"].ToString());
                User_Prof.SearchFriend(id, TextBox2.Text, friend_rep);
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
          
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
         
        }

        protected void homebtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Profile.aspx");
        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
           
        }

        protected void friend_rep_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            fieldid = (HiddenField)friend_rep.Items[e.Item.ItemIndex].FindControl("HiddenField1");
            User_Prof._FriendId = Convert.ToInt16(fieldid.Value.ToString());
            Response.Redirect("ChatRoom.aspx");
        }
    }
}