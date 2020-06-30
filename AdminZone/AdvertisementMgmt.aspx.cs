using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_AdvertisementMgmt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "insert into tbl_advertise(picname,alink,adate) values('" + FuAdv.FileName + "','" + TxtLink.Text + "','" + DateTime.Now + "')";
        if (dm.ExecuteInsertUpdateOrDelete(cmd))
        {
            Response.Write("<script>alert('Advertiesement added successfully..');window.location.href='AdvertisementMgmt.aspx';</script>");
            FuAdv.SaveAs(Server.MapPath("~/Advertisement/" + FuAdv.FileName));
        }
        else
        {
            Response.Write("<script>alert('Advertiesement not added..');window.location.href='AdvertisementMgmt.aspx';</script>");
        }

    }
}