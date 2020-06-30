using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class AdminZone_AddNews : System.Web.UI.Page
{
    DBManager dm = new DBManager();
    string cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            cmd = "select * from tbl_news_category order by ncid desc";
         DataTable dt=dm.ExecuteSelect(cmd);
         if (dt.Rows.Count > 0)
         {
             DdlNCat.DataSource = dt;
             DdlNCat.DataTextField = "NewsCat";
             DdlNCat.DataBind();
         }
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
cmd="insert into tbl_news(picname,ncategory,nhead,news,newsdate)values('"+FuNPic.FileName+"','"+DdlNCat.SelectedValue+"','"+TxtNH.Text+"','"+TxtNews.Text+"','"+DateTime.Now+"')";
if (dm.ExecuteInsertUpdateOrDelete(cmd))
{
    FuNPic.SaveAs(Server.MapPath("~/NewsPic/" + FuNPic.FileName));
    Response.Write("<script>alert('NEWS ADDED SUCCESSFULLY..');window.location.href='AddNews.aspx';</script>");
}
else
{
    Response.Write("<script>alert('NEWS NOT ADDED..');</script>");
}
    
    }
}