using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;

/// <summary>
/// Summary description for SMSSender
/// </summary>
public class SMSSender
{
    string UserId, ScretKey, SenderId;
	public SMSSender()
	{
        UserId = "BRIJESH";
        ScretKey = "8620e45a26XX";
        SenderId = "SPILKO";
	}
     public bool SendSMS(string MobileNo, string Message)
    {
        try
        {
            string APIURL = "http://sms.bulkssms.com/submitsms.jsp?user=" +
                UserId + "&key=" + ScretKey
                + "&mobile=" + MobileNo + "&message="
                + Message + "&senderid=" + SenderId
                + "&accusage=1";
            WebClient wc = new WebClient();
            string response = wc.DownloadString(APIURL);
            string s = response.Substring(response.IndexOf('s'), 4);
            if (s == "sent")
                return true;
            else
                return false;
        }
        catch
        {
            return false;
        }
    }
}