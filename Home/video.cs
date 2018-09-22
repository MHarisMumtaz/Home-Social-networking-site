using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Home
{
    public class video
    {

        private int user_id;

        public int USER_ID
        {
            get { return user_id; }
            set { user_id = value; }
        }

        private int VIC_ID;

        public int VideoCatagory
        {
            get { return VIC_ID; }
            set { VIC_ID = value; }
        }
        private string Videoname;

        public string Title
        {
            get { return Videoname; }
            set { Videoname = value; }
        }
        private string Desc;

        public string Description
        {
            get { return Desc; }
            set { Desc = value; }
        }
        private string location;

        public string Loc
        {
            get { return location; }
            set { location = value; }
        }

        public int Upload()
        {
            SqlCommand sc = new SqlCommand("spUploadVideo", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@userId", user_id);
            sc.Parameters.AddWithValue("@VicId", VIC_ID);
            sc.Parameters.AddWithValue("@title",Videoname);
            sc.Parameters.AddWithValue("@Desc", Desc);
            sc.Parameters.AddWithValue("@loc", location);
            int Val = sc.ExecuteNonQuery();
            return Val;
        }
        public void FetchVideos(int uid,Repeater repeater)
        {
            SqlCommand sc = new SqlCommand("spFetchVideos", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@id", uid);
            SqlDataAdapter da = new SqlDataAdapter(sc);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count >=0)
            {
                repeater.DataSource = ds;
                repeater.DataBind();
            }
        }
        
    }
}