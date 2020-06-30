using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    DBManager dm=new DBManager();
    EncryptionManager em = new EncryptionManager();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
 
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        EncryptionManager em = new EncryptionManager();
        string cmd = "select * from tbl_login where user_id='" + TxtUserid.Text + "' and passwd='" + em.EncryptMyData(TxtPasswd.Text) + "'";
        DataTable dt = dm.ExecuteSelect(cmd);
        if (dt.Rows.Count > 0)
        {
            Session["aid"] = TxtUserid.Text;
            Response.Redirect("AdminZone/AddNews.aspx");

        }
        else
        {
            Response.Write("<script>alert('Userid or Password in not match')</script>");
        }
    }
}
