using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_VideoMgmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd="insert into tbl_video (Videoname,videodes,vdate) values('"+FuVideo.FileName+"','"+TxtVDec.Text+"','"+DateTime.Now+"')";
       bool b=dm.ExecuteInsertUpdateOrDelete(cmd);
       if (b == true)
       {
           FuVideo.SaveAs(Server.MapPath("~/Videos/" + FuVideo.FileName));
       Response.Write("<script>alert('VIDEO ADDED SUCCESSFULLY...');window.location.href='VideoMgmt.aspx'</script>");
       }
       else
       {
           Response.Write("<script>alert('VIDEO NOT ADDED')</script>");
      
       }
    
    }
}