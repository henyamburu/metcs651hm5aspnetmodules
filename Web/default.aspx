<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Web._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>BU - MET CS651</title>
    <link rel="stylesheet" href="/assets/css/style.css" type="text/css" />
    <link href="/assets/css/max-width-768px.css" rel="stylesheet" type="text/css"/> 
    <link href="/assets/css/max-width-480px.css" rel="stylesheet" type="text/css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script type="text/javascript">
        function getSortedWordsCount() {
            var value = document.all("lineReader").value;
            Service.GetSortedWordsCount(value, onReturn, onTimeOut);
        }
        function onReturn(result) {
            document.all("previewWords").innerHTML = result;
        }
        function onTimeOut(result) {
            alert("oops, took too long!");
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
            <Services>
                <asp:ServiceReference Path="~/Service.svc" />
            </Services>
        </asp:ScriptManager>
    <div id="page" align="center">
        <div id="header">
            <div id="companyname" align="left">BU - MET CS651</div>
            <div id="mainmenu">
                <ul>
                    <li><a class="current" href="#">Colorize Words</a></li>
                    <li><a href="/sort.aspx">Sort Words</a></li>
                </ul>
            </div>
            <div id="mainmenu-max-width-480px">
                <ul>
                    <li>
                        <a class="current" href="#">Colorize Words</a>
                        <ul>
                            <li><a href="/sort.aspx">Sort Words</a></li>
                        </ul>
                    </li>
                </ul>                
            </div>
        </div>
        <div id="container">
            <div class="container-heading">
                <h1>Line Reader</h1>
            </div>
            <div class="container-content">
                <div class="reader">
                    <textarea id="lineReader" onkeyup="getSortedWordsCount()"></textarea>
                </div>
                <div class="scroller">                
                <p  id="previewWords">. 
                </p>
                    </div>
                <div class="clr"></div>
            </div>
        </div>
        <div class="footer">
            <ul>
                <li><a href="/default.aspx">Colorize Words</a></li>
                <li><a href="/sort.aspx">Sorted Words</a></li>
            </ul>
            <div class="clr"></div>
        </div>
    </div>
        
    </form>
</body>
</html>
