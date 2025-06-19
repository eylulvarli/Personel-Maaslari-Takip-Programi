<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="yillikpersonelmaaslarigrafigi.aspx.cs" Inherits="WebApplication10.yillikpersonelmaaslarigrafigi" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                <h1>Yıllık Personel Maaşları Grafiği 
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-1HF6L3T\SQLEXPRESS;Initial Catalog=db_wproje;Integrated Security=True;" SelectCommand="SELECT tbl_Personeller.Pers_Adi AS personel, tbl_Maaslar.Maas_Tutari AS maaş, SUM(tbl_Maaslar.Maas_Toplam) AS toplam FROM tbl_Maaslar INNER JOIN tbl_Personeller ON tbl_Maaslar.Pers_ID = tbl_Personeller.Pers_ID GROUP BY tbl_Maaslar.Maas_Tutari, tbl_Personeller.Pers_Adi"></asp:SqlDataSource>
                </h1>
                <p>&nbsp;&nbsp; Yıl Seçiniz:
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="83px" DataSourceID="SqlDataSource3" DataTextField="Maas_Yili" DataValueField="Pers_ID">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT DISTINCT Maas_Yili FROM tbl_Maaslar"></asp:SqlDataSource>
                </p>
            </td>
        </tr>
        <tr>
            <td>
               
                <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSource2">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="personel" YValueMembers="toplam">
                        </asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Raporu Kapat" />
            </td>
        </tr>
    </table>
</asp:Content>
