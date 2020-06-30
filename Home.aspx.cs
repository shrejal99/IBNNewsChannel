using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    string cmd;
    DBManager dm = new DBManager();
    protected void Page_Load(object sender, EventArgs e)
    {
          
      
      
        cmd = "select * from tbl_video order by vid desc";
       DataTable dt=dm.ExecuteSelect(cmd);
       if (dt.Rows.Count > 0)
       {
           string str="";
       str+="<video controls autoplay height='250px' width='100%' style='margin:0px auto;'>";
           str+="<source src='Videos/"+dt.Rows[0][1].ToString()+"' />";
       str+="</video>";
       lblvideo.Text = str;
       }
       string str1 = "";
       cmd= "select * from tbl_News_category";
       DataTable catRecord =dm.ExecuteSelect(cmd);
       for (int k = 0; k < catRecord.Rows.Count; k++)
       {

           str1 += " <div class='col-sm-12' style='margin-top:2%;margin-bottom:1%;'><div class='col-sm-4'><div class='text-center'style='font-size:22px;color:white;background:#1c2331;' ><b>" + catRecord.Rows[k]["NewsCat"] + "</b></div></div><div class='col-sm-8'></div></div>";

           cmd = "select ncategory,nhead,picname,news,newsid from tbl_news where NCategory='" + catRecord.Rows[k]["newscat"] + "'";
           DataTable dt4 = dm.ExecuteSelect(cmd);
          
           if (dt4.Rows.Count > 0)
           {

               for (int i = 0; i < dt4.Rows.Count; i++)
               {

                   str1 += "<div style='margin-top:20px;' class='col-sm-12'><div class='col-sm-3'><img style='height:150px;width:100%;box-shadow:1px 1px 4px black;border-radius:2px;margin-bottom:10px;border:6px solid #1c2331;padding:.5%;' src='NewsPic/" + dt4.Rows[i][2].ToString() + "'/></div><div class='col-sm-9'><div class='text-center' style='font-size:18px;border-bottom:1px solid #1c2331;'>" + dt4.Rows[i][3].ToString() + "</div><div class='row'><div class='col-sm-12' style='text-align:justify;font-size:15px;'>" + dt4.Rows[i][1].ToString() + "</div></div></div></div>";
                  
                  

               }



           }

       }
       lblnews.Text = str1;

     cmd= "select PIcName,alink from tbl_advertise order by aid desc";
     DataTable dt5 = dm.ExecuteSelect(cmd);
            if (dt5.Rows.Count > 0)
            {

                string st = "<div class='col-sm-12'>";
               
                    st += "<a href='" + dt5.Rows[0][1] + "' target='_blank'><img width='100%' height='280px' src='Advertisement/" + dt5.Rows[0][0].ToString() + "'/></a>";
               
                st += "  </div>";
                lbladv.Text = st;
            }
    }
           

   
}
