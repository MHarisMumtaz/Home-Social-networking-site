using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace Home
{
    public class User_Prof
    {
        public static string _Uname{ get; set; }
        public static string _UFname { get; set; }
        public static string _Email { get; set; }
        public static string _Password { get; set; }
        public static string _DOB { get; set; }
        public static int _Gender_id { get; set; }
        public static int _Country_id { get; set; }
        public static string _Home_name { get; set; }
        public static int _HomeCat_ID { get; set; }
        public static int _Prof_ID { get; set; }
        public static string _Pic_name { get; set; }
        public static string _Prof_Description { get; set; }
        public static string _Country_Name { get; set; }
        public static string _Join { get; set; }
        public static int _FriendId { get; set; }

        public static int Create()
        {
            SqlCommand sc = new SqlCommand("spNewUser", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@Name", _Uname);
            sc.Parameters.AddWithValue("@FatherName",_UFname);
            sc.Parameters.AddWithValue("@GenderId", _Gender_id);
            sc.Parameters.AddWithValue("@Hname",_Home_name);
            sc.Parameters.AddWithValue("@Homecategory",_HomeCat_ID);
            sc.Parameters.AddWithValue("@CountryId", _Country_id);
            sc.Parameters.AddWithValue("@email", _Email);
            sc.Parameters.AddWithValue("@Pass", _Password);
            sc.Parameters.AddWithValue("@Proff_id", _Prof_ID);
            int Val = sc.ExecuteNonQuery();
            return Val;
        }

        public static int GetId()
        {
            SqlCommand sc = new SqlCommand("SELECT User_ID FROM User_info WHERE Email = '"+_Email+"'", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.Text;
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            int id = Convert.ToInt16(dt.Rows[0]["User_ID"].ToString());
            return id;
        }

        public static int AddPic()
        {
            int id = GetId();
            SqlCommand sc = new SqlCommand("spAddPic", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@User_ID", id);
            sc.Parameters.AddWithValue("@name", _Pic_name);
            int Val = sc.ExecuteNonQuery();
            return Val;
        }

        public static int AddDate()
        {
            int id = GetId();
            SqlCommand sc = new SqlCommand("spJoinDate", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@ID", id);
            sc.Parameters.AddWithValue("@DateofB", _DOB);
            sc.Parameters.AddWithValue("@joindate",DateTime.Today);
            int Val = sc.ExecuteNonQuery();
            return Val;
        }

        public static DropDownList FillCombo(DropDownList ddl, string TableName)
        {
            SqlCommand sc = new SqlCommand("spFillCombo", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@TableName", TableName);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ddl.DataSource = dt;
            ddl.DataValueField = dt.Columns[0].ToString();
            ddl.DataTextField = dt.Columns[1].ToString(); 
            ddl.DataBind();
            ddl.Items.Insert(0, "Select " + TableName);
            return ddl;
        }

        public static int Login()
        {
            int val = 1;
            SqlCommand sc = new SqlCommand("spLogin", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@email", _Email);
            sc.Parameters.AddWithValue("@Password",_Password);

            SqlDataReader sdr = sc.ExecuteReader();
            if (sdr.Read())
            {
                _Home_name = sdr[0].ToString();
                sdr.Close();
                val = 0;
            }
            sdr.Close();
            return val;
        }

        public static void FetchUserInfo(int _ID)
        {
            SqlCommand sc = new SqlCommand("spFetchUser", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@ID", _ID);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            _Uname = dt.Rows[0][0].ToString();
            _UFname =dt.Rows[0][1].ToString();
            _Home_name = dt.Rows[0][2].ToString();
            _Prof_Description = dt.Rows[0][3].ToString();
            _Country_Name = dt.Rows[0][4].ToString();
            _DOB = dt.Rows[0][5].ToString();
            _Join = dt.Rows[0][6].ToString();
            Get_Recent_Pic(_ID);
        }

        public static void Get_Recent_Pic(int ID)
        {
            SqlCommand sc = new SqlCommand("spGetPic", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@id", ID);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            _Pic_name = dt.Rows[0][0].ToString();
        }

        public static void FetchSearchResult(Repeater repeter)
        {
            SqlCommand sc = new SqlCommand("spSearchFriend", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@H_Cat_ID",_HomeCat_ID);
            sc.Parameters.AddWithValue("@HomeName", _Home_name);
            SqlDataAdapter da = new SqlDataAdapter(sc);
            DataTable ds = new DataTable();                     
            da.Fill(ds);
            if (ds.Rows.Count>=0)
            {
                repeter.DataSource = ds;
                repeter.DataBind();       
            }
          
        }

        public static int AddNewFriend(int uid,int friendid,string friendName)
        {
            SqlCommand sc = new SqlCommand("spAddFriend", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@Userid", uid);
            sc.Parameters.AddWithValue("@Friendid", friendid);
            sc.Parameters.AddWithValue("@FriendName", friendName);
            int Val = sc.ExecuteNonQuery();
            return Val;
        }

        public static void RetriveFriends(int uid,Repeater repeater)
        {
            SqlCommand sc = new SqlCommand("spRetriveFriend", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@userId", uid);
            SqlDataAdapter da = new SqlDataAdapter(sc);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count>=0)
            {
                repeater.DataSource = ds;
                repeater.DataBind(); 
            }
        }

        public static void SearchFriend(int uid,string friendName,Repeater repeater)
        {
            SqlCommand sc = new SqlCommand("spSearchUserFriends", ConnectionString.Get_Connection());
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@friendname", friendName);
            sc.Parameters.AddWithValue("@id", uid);
            SqlDataAdapter da = new SqlDataAdapter(sc);
            DataTable ds = new DataTable();
            da.Fill(ds);
            if (ds.Rows.Count>=0)
            {
                repeater.DataSource = ds;
                repeater.DataBind();
            }
        }
      
    }
}