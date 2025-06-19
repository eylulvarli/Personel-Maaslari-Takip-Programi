<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personelmaasiverigirisformu.aspx.cs" Inherits="WebApplication10.personelmaasıverigirisformu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            margin-left: 0px;
            font-size: x-large;
        }
        .auto-style15 {
            width: 100%;
        }
        .auto-style16 {
            height: 13px;
            font-size: x-large;
        }
        .auto-style17 {
            font-size: x-large;
        }
        .auto-style18 {
            background-color: #FFFFFF;
            font-size: small;
        }
        .auto-style19 {
            font-size: medium;
        }
        .auto-style20 {
            height: 13px;
            font-size: x-large;
            width: 488px;
        }
        .auto-style21 {
            font-size: x-large;
            width: 488px;
        }
        .auto-style22 {
            width: 488px;
        }
        .auto-style23 {
            text-align: center;
            height: 41px;
            background-color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1 class="auto-style1">
            PERSONEL MAAŞI VERİ GİRİŞ FORMU</h1>
        <table aria-expanded="undefined" class="auto-style15" style="border: medium groove #000000; background-color: #C0C0C0">
            <tr>
                <td class="auto-style20">
                <span class="auto-style17">Personel Adı:&nbsp;&nbsp;&nbsp;</span><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
                </td>
                <td class="auto-style16">
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" CssClass="auto-style18" Height="39px" Width="133px">
            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
            <span class="auto-style17">Ödeme Tarihi: </span></td>
                <td class="auto-style10">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" CssClass="auto-style17" Height="30px" Width="181px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
            <span class="auto-style17">Ödeme Tutarı:&nbsp;&nbsp;</span></td>
                <td class="auto-style10"> <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style11" Height="29px" Width="182px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
            <span class="auto-style17">Komisyon Tutarı: </span>
                </td>
                <td class="auto-style10">
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style17" Height="28px" OnTextChanged="TextBox3_TextChanged" Width="184px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                <span class="auto-style17">Ay Adı:&nbsp;</span><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [K_ID], [Ay_adi] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" InsertCommand="INSERT INTO tbl_Maaslar(Pers_ID, Maas_Tarihi, Maas_Tutari, Maas_Komisyonu, Ay_ID) VALUES (@Pers_ID, @Maas_Tarihi, @Maas_Tutari, @Maas_Komisyonu, @Ay_ID)" SelectCommand="SELECT [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID] FROM [tbl_Maaslar]">
                <InsertParameters>
                    <asp:Parameter Name="Pers_ID" />
                    <asp:Parameter Name="Maas_Tarihi" />
                    <asp:Parameter Name="Maas_Tutari" />
                    <asp:Parameter Name="Maas_Komisyonu" />
                    <asp:Parameter Name="Ay_ID" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style19"></asp:Label>
                </td>
                <td class="auto-style10">
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource2" DataTextField="Ay_adi" DataValueField="K_ID" CssClass="auto-style23">
            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verileri Kaydet" Height="32px" Width="199px"   />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td>
            <asp:Button ID="Button2" runat="server" OnClientClick="window.close()" Text="Formu Kapat"  OnClick="Button2_Click" Height="35px" Width="202px" />
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
