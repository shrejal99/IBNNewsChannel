using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Suggestion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd;
        cmd = "insert into tbl_suggestion(name,mobileno,topic,message,sdate)values('" + txtname.Text + "','" +txtcontact.Text + "','" +TxtTop.Text + "','" + txtmsg.Text + "','" + DateTime.Now + "')";
        if (dm.ExecuteInsertUpdateOrDelete(cmd))
        {
         
            Response.Write("<script>alert('Added..');window.location.href='Suggestion.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('NEWS NOT ADDED..');</script>");
        }

    }
}