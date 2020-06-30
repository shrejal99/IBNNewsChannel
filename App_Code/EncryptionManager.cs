using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EncryptionManager
/// </summary>
public class EncryptionManager
{
    public string EncryptMyData(string PlainText)
    {
        string CyberText = "";
        int ASCIIValue;
        char NewChar;
        foreach (char ch in PlainText)
        {
            ASCIIValue = ch;
            if (ASCIIValue >= 65 && ASCIIValue <= 90)
            {
                ASCIIValue = 122 - ASCIIValue + 65;
            }
            else if (ASCIIValue >= 97 && ASCIIValue<=122)
            {
                ASCIIValue = 90 - ASCIIValue + 97;
            }
            else if (ASCIIValue >= 48 && ASCIIValue <= 57)
            {
                ASCIIValue = 57-ASCIIValue + 48;
            }
            NewChar = (char)ASCIIValue;
            CyberText = CyberText + NewChar;
        }
        return CyberText;
    }
}