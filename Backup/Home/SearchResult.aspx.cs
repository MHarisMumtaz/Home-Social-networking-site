using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Home
{
    public partial class SearchResult : System.Web.UI.Page
    {
        HiddenField field;
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                User_Prof.FetchSearchResult(Search_Friends_rep);
            }
        }

        protected void Search_Friends_rep_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            field = (HiddenField)Search_Friends_rep.Items[e.Item.ItemIndex].FindControl("HiddenField1");
            Label lbl = (Label)Search_Friends_rep.Items[e.Item.ItemIndex].FindControl("Label1");
            int id = (int)Session["loginuser"];
            User_Prof.AddNewFriend(id, Convert.ToInt32(field.Value), lbl.Text);
            ClientScript.RegisterStartupScript(this.GetType(), "Message", "alert('File has been successfully uploaded');", true);
        }//end of adding friend

       
    }
}