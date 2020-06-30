using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_AddNewsCategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        string cmd = "insert into tbl_news_category (newscat,newscatdt)values('" + TxtVDec.Text + "','" + DateTime.Now + "')";
        if (dm.ExecuteInsertUpdateOrDelete(cmd))
            Response.Write("<script>alert('Category Added..');window.location.href='AddNewsCategory.aspx';</script>");
        else
            Response.Write("<script>alert('Category not Added..')</script>");

    }
}