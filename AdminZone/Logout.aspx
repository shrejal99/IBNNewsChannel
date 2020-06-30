<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="AdminZone_Logout" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function logout()
        {
            window.history.forward;
          window.setTimeout("window.location.href='../Login.aspx'",500)
        }
    </script>
</head>
<body onload="logout()">
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
