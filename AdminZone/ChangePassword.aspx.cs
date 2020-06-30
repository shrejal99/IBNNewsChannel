using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminZone_ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        DBManager dm = new DBManager();
        EncryptionManager em = new EncryptionManager();
         string pass=em.EncryptMyData(Txtp.Text);
        string npass=em.EncryptMyData(Txtn.Text);
        string cpass=em.EncryptMyData(Txtc.Text);

        if (npass == cpass)
        {
            string cmd = "update tbl_login set passwd='" + npass + "' where user_id='" + Session["aid"] + "'";
            if (dm.ExecuteInsertUpdateOrDelete(cmd))
            {
                Response.Write("<script>alert('Password Change Successfully..');window.location.href='../Login.aspx';</script>");
            }
            else
            {
                Response.Write("<script>alert('UserId or Password in Not Match..');</script>");

            }
        }
        else
        {
            Response.Write("<script>alert('Please Confirm Password..')</script>");

        }
       
    }
}