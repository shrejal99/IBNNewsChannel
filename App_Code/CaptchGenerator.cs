using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for CaptchGenerator
/// </summary>
public class CaptchGenerator
{
    public string GetCaptchaCode()
    {
        string Code = "";
        Random rm = new Random();
        int num1 = rm.Next(65, 80);
        char ch1 = (char)num1;
        int num2 = rm.Next(70, 110);
        char ch2 = (char)num2;
        int num3 = rm.Next(48, 50);
        char ch3 = (char)num3;
        int num4 = rm.Next(49, 50);
        char ch4 = (char)num4;
        int num5 = rm.Next(100, 120);
        char ch5 = (char)num5;
        Code = Code + ch1 + " " + ch2 + " " + ch3 + " " + ch4 + " " + ch5 ;
        return Code;
    }
	
}