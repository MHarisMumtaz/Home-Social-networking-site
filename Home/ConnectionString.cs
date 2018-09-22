using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace Home
{
    public class ConnectionString
    {
        public static SqlConnection My_Sql_Connection;

        public static SqlConnection Get_Connection()
        {
            if (My_Sql_Connection == null)
            {
                My_Sql_Connection = new SqlConnection();
                My_Sql_Connection.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename='C:\Users\HM\Downloads\New folder\Home\Home\App_Data\Home_DB.mdf';Integrated Security=True;Connect Timeout=30;User Instance=True";
                My_Sql_Connection.Open();
            }
            return My_Sql_Connection;
        }//end of connection
    }
}