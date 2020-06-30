using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
/// <summary>
/// Summary description for DBManager
/// </summary>
public class DBManager
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConString"].ToString());
    public bool ExecuteInsertUpdateOrDelete(string yourcommand)
    {
        SqlCommand cmd = new SqlCommand(yourcommand, con);
        if (ConnectionState.Closed == con.State)
        {
            con.Open();
        }
        return cmd.ExecuteNonQuery() > 0 ? true : false; 

    } 
    public DataTable ExecuteSelect(string MyCommand)
    {
        SqlDataAdapter da = new SqlDataAdapter(MyCommand, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

}