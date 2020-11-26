<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Agenda.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href ="Site.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class ="Login alinhamentocentral">
            <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="E-mail:"></asp:Label>
            <br />
            <asp:TextBox ID="txtEmail" runat="server" Width="295px"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="Senha:"></asp:Label>
            <br />
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Width="293px"></asp:TextBox>
            <asp:Button ID="btnLogar" runat="server" OnClick="btnLogar_Click" Text="Logar" />
            <br />
            <br />
    <br />
    <asp:Label ID="lMsg" runat="server" Font-Bold="True" Font-Size="Large" Visible="False"></asp:Label>
        </div>
    </form>
</body>
</html>
