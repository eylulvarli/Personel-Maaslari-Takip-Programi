<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bolumverigirisformu.aspx.cs" Inherits="WebApplication10.bolumverigirisformu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1 class="auto-style1">BÖLÜM VERİ GİRİŞ FORMU</h1>
    <form id="form1" runat="server" style="background-color: #C0C0C0; border: medium groove #000000">
        <table class="auto-style2">
            <tr>
                <td><span class="auto-style3">Bölüm Adı:&nbsp;&nbsp;&nbsp;</span> </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><span class="auto-style3">Bölüm Telefonu:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Yönetici ID:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Kaydet" Height="40px" Width="200px" />
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Formu Kapat" OnClientClick="window.close()" Height="40px" Width="200px" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" InsertCommand="INSERT INTO tbl_Bolumler(Bolum_Adi, Bolum_Tel, Yonetici_ID) VALUES (@Bolum_Adi, @Bolum_Tel, @Yonetici_ID)" SelectCommand="SELECT [Bolum_Adi], [Bolum_Tel], [Yonetici_ID] FROM [tbl_Bolumler]">
            <InsertParameters>
                <asp:Parameter Name="Bolum_Adi" />
                <asp:Parameter Name="Bolum_Tel" />
                <asp:Parameter Name="Yonetici_ID" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
