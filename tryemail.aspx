<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tryemail.aspx.cs" Inherits="tryemail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:Label ID="frommail" runat="server" Text="FROM"></asp:Label>
        <asp:TextBox ID="txtfrom" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblpass" runat="server" Text="PASS"></asp:Label>
        <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblto" runat="server" Text="TO"></asp:Label>
        <asp:TextBox ID="txtto" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblsub" runat="server" Text="SUBJECT"></asp:Label>
        <asp:TextBox ID="txtsubject" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="lblmsg" runat="server" Text="MESSAGE"></asp:Label>
        <asp:TextBox ID="txtmsg" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnsend" runat="server" OnClick="btnsend_Click" Text="SEND" />
        
    </div>
    </form>
</body>
</html>
