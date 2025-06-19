<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personelverigirisformu.aspx.cs" Inherits="WebApplication10.personelverigirisformu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style6 {
            width: 320px;
        }
        .auto-style8 {
            width: 358px;
        }
        .auto-style9 {
            height: 26px;
            width: 358px;
            font-size: x-large;
        }
        .auto-style10 {
            width: 320px;
            height: 29px;
            font-size: x-large;
        }
        .auto-style11 {
            width: 358px;
            height: 29px;
            font-size: x-large;
        }
        .auto-style13 {
            margin-bottom: 0px;
        }
        .auto-style14 {
            width: 320px;
            height: 32px;
        }
        .auto-style15 {
            width: 358px;
            height: 32px;
        }
        .auto-style16 {
            width: 289px;
        }
        .auto-style17 {
            width: 289px;
            height: 26px;
        }
        .auto-style18 {
            width: 289px;
            height: 29px;
        }
        .auto-style19 {
            width: 289px;
            height: 32px;
        }
        .auto-style24 {
            width: 320px;
            font-size: x-large;
        }
        .auto-style25 {
            width: 320px;
            height: 26px;
            font-size: x-large;
        }
        .auto-style26 {
            width: 334px;
        }
        .auto-style27 {
            height: 26px;
            width: 334px;
        }
        .auto-style28 {
            width: 334px;
            height: 29px;
        }
        .auto-style29 {
            width: 334px;
            height: 32px;
        }
        .auto-style30 {
            width: 358px;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style2" style="padding: inherit; line-height: normal; table-layout: fixed;">PERSONEL VERİ GİRİŞ FORMU<br />
                <br />
            </h1>
            <table class="auto-style1" style="background-color: #C0C0C0; border: medium groove #808080">
                <tr>
                    <td class="auto-style24">Adı:&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox1" runat="server" Height="29px" Width="190px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">Soyadı:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="190px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">Doğum Tarihi:&nbsp;&nbsp; </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" Height="30px" Width="190px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">Cinsiyeti:</td>
                    <td class="auto-style16">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" Height="19px" Width="276px">
                            <asp:ListItem Selected="True" Value="1">Erkek</asp:ListItem>
                            <asp:ListItem Value="2">Kadın</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">İşe Giriş Tarihi:</td>
                    <td class="auto-style27">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Date" Height="30px" Width="190px"></asp:TextBox>
                    </td>
                    <td class="auto-style9">İşten Çıkış Tarihi:</td>
                    <td class="auto-style17">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Date" Height="30px" Width="191px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">Cep Tel:</td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox7" runat="server" OnTextChanged="TextBox7_TextChanged" Height="30px" Width="189px"></asp:TextBox>
                    </td>
                    <td class="auto-style30">Email:</td>
                    <td class="auto-style16">
                        <asp:TextBox ID="TextBox6" runat="server" Height="30px" Width="190px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">Ünvan:</td>
                    <td class="auto-style27">
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Unvan" DataValueField="K_ID" Height="32px" Width="133px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Unvan], [K_ID] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">Bölümü:</td>
                    <td class="auto-style17">
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style13" DataSourceID="SqlDataSource2" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="31px" Width="132px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">Adres:</td>
                    <td class="auto-style28">
                        <asp:TextBox ID="TextBox8" runat="server" Height="30px" Width="190px"></asp:TextBox>
                    </td>
                    <td class="auto-style11">Personel Aktif mi?:</td>
                    <td class="auto-style18">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style24">İli:</td>
                    <td class="auto-style26">
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Ilce_Adi" DataValueField="K_ID" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" Height="31px" Width="131px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [K_ID], [Ilce_Adi] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style30">İlçesi:</td>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource4" DataTextField="Il_adi" DataValueField="K_ID" Height="33px" Width="132px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [K_ID], [Il_adi] FROM [tbl_Katagoriler]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" InsertCommand="INSERT INTO tbl_Personeller(Pers_Adi, Pers_Soyadi, Pers_DTarihi, Cinsiyet_ID, Pers_Giris_Tarihi, Pers_Cikis_Tarihi, Pers_Cep, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Email, Unvan_ID, Bolum_ID, Pers_Aktif_Mi) VALUES (@Pers_Adi, @Pers_Soyadi, @Pers_DTarihi, @Cinsiyet_ID, @Pers_Giris_Tarihi, @Pers_Cikis_Tarihi, @Pers_Cep, @Pers_Adresi, @Pers_Ilcesi, @Pers_Ili, @Pers_Email, @Unvan_ID, @Bolum_ID, @Pers_Aktif_Mi)" SelectCommand="SELECT [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Cinsiyet_ID], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Cep], [Pers_Email], [Unvan_ID], [Bolum_ID], [Pers_Adresi], [Pers_Aktif_Mi], [Pers_Ilcesi], [Pers_Ili] FROM [tbl_Personeller]">
                            <InsertParameters>
                                <asp:Parameter Name="Pers_Adi" />
                                <asp:Parameter Name="Pers_Soyadi" />
                                <asp:Parameter Name="Pers_DTarihi" />
                                <asp:Parameter Name="Cinsiyet_ID" />
                                <asp:Parameter Name="Pers_Giris_Tarihi" />
                                <asp:Parameter Name="Pers_Cikis_Tarihi" />
                                <asp:Parameter Name="Pers_Cep" />
                                <asp:Parameter Name="Pers_Adresi" />
                                <asp:Parameter Name="Pers_Ilcesi" />
                                <asp:Parameter Name="Pers_Ili" />
                                <asp:Parameter Name="Pers_Email" />
                                <asp:Parameter Name="Unvan_ID" />
                                <asp:Parameter Name="Bolum_ID" />
                                <asp:Parameter Name="Pers_Aktif_Mi" />
                            </InsertParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td class="auto-style8">
                        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style16">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style29">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Formu Kapat" Height="35px" OnClick="Button1_Click" Width="201px" />
                    </td>
                    <td class="auto-style15">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Veriyi Kaydet" Height="35px" Width="200px" />
                    &nbsp;
                    </td>
                    <td class="auto-style19"></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
