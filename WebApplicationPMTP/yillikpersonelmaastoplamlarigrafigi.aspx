<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Codefile="yillikpersonelmaaslarigrafigi.aspx.cs" Inherits="WebApplication10.yillikpersonelmaaslarigrafigi" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <table style="width: 100%">
        <tr>
            <td>
                <h1 class="text-center"><strong>Yıllık Personel Maaşları Grafiği 
                    
                    </strong>
                </h1>
                <p>&nbsp;&nbsp; <span style="font-size: x-large">Yıl Seçiniz: </span>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="181px" DataSourceID="SqlDataSource2" DataTextField="Maas_Yili" DataValueField="Maas_Yili" AutoPostBack="True" Height="35px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT Maas_Yili FROM tbl_Maaslar GROUP BY Maas_Yili"></asp:SqlDataSource>
                </p>
            </td>
        </tr>
        <tr>
            <td>
               
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource3">
                    <Series>
                        <asp:Series Name="Series1" XValueMember="Personel" YValueMembers="Toplam">
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
            <td>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT tbl_Personeller.Pers_Isim AS Personel, tbl_Maaslar.Maas_Yili AS Yil, tbl_Maaslar.Maas_Toplam AS Toplam FROM tbl_Maaslar INNER JOIN tbl_Personeller ON tbl_Maaslar.Pers_ID = tbl_Personeller.Pers_ID WHERE (tbl_Maaslar.Maas_Yili = @Maas_Yili)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Maas_Yili" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server"  Text="Raporu Kapat" OnClientClick="window.close()" />
            </td>
        </tr>
    </table>
</asp:Content>
