<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personelveriguncellemeformu1.aspx.cs" Inherits="WebApplication10.personelveriguncellemeformu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style2">
                PERSONEL VERİ GÜNCELLEME FORMU
            </h1>
            <div class="auto-style1">
            <br />
                <span class="auto-style3">Personel Seçiniz:&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" AutoPostBack="True" Height="42px" Width="147px">
            </asp:DropDownList>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pers_ID" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="50px" Width="125px" CssClass="auto-style3">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" InsertVisible="False" ReadOnly="True" SortExpression="Pers_ID" />
                    <asp:BoundField DataField="Pers_Adi" HeaderText="Pers_Adi" SortExpression="Pers_Adi" />
                    <asp:BoundField DataField="Pers_Soyadi" HeaderText="Pers_Soyadi" SortExpression="Pers_Soyadi" />
                    <asp:BoundField DataField="Pers_DTarihi" HeaderText="Pers_DTarihi" SortExpression="Pers_DTarihi" />
                    <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Pers_Giris_Tarihi" SortExpression="Pers_Giris_Tarihi" />
                    <asp:BoundField DataField="Pers_Cikis_Tarihi" HeaderText="Pers_Cikis_Tarihi" SortExpression="Pers_Cikis_Tarihi" />
                    <asp:BoundField DataField="Pers_Adresi" HeaderText="Pers_Adresi" SortExpression="Pers_Adresi" />
                    <asp:BoundField DataField="Pers_Ili" HeaderText="Pers_Ili" SortExpression="Pers_Ili" />
                    <asp:BoundField DataField="Pers_Ilcesi" HeaderText="Pers_Ilcesi" SortExpression="Pers_Ilcesi" />
                    <asp:BoundField DataField="Pers_Email" HeaderText="Pers_Email" SortExpression="Pers_Email" />
                    <asp:BoundField DataField="Pers_Tel" HeaderText="Pers_Tel" SortExpression="Pers_Tel" />
                    <asp:BoundField DataField="Pers_Cep" HeaderText="Pers_Cep" SortExpression="Pers_Cep" />
                    <asp:BoundField DataField="Unvan_ID" HeaderText="Unvan_ID" SortExpression="Unvan_ID" />
                    <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" SortExpression="Bolum_ID" />
                    <asp:BoundField DataField="Pers_Maas" HeaderText="Pers_Maas" SortExpression="Pers_Maas" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
            <br />
            <div>
                <asp:Button ID="Button1" runat="server" Height="36px" OnClientClick="window.close()" Text="Formu Kapat" Width="202px" />
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" DeleteCommand="DELETE FROM tbl_Personeller
WHERE Pers_ID = @Pers_ID" SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ili], [Pers_Ilcesi], [Pers_Email], [Pers_Tel], [Pers_Cep], [Unvan_ID], [Bolum_ID], [Pers_Maas] FROM [tbl_Personeller] WHERE ([Pers_ID] = @Pers_ID)
" UpdateCommand="UPDATE tbl_Personeller SET Pers_Adi = @Pers_Adi, Pers_Soyadi = @Pers_Soyadi, Pers_DTarihi = @Pers_DTarihi, Pers_Giris_Tarihi = @Pers_Giris_Tarihi, Pers_Cikis_Tarihi = @Pers_Cikis_Tarihi, Pers_Adresi = @Pers_Adresi, Pers_Ili = @Pers_Ili, Pers_Ilcesi = @Pers_Ilcesi, Pers_Tel = @Pers_Tel, Pers_Cep = @Pers_Cep, Unvan_ID = @Unvan_ID, Bolum_ID = @Bolum_ID, Pers_Maas = @Pers_Maas, Pers_Email = @Pers_Email
WHERE Pers_ID = @Pers_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Pers_ID" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pers_Adi" />
                    <asp:Parameter Name="Pers_Soyadi" />
                    <asp:Parameter Name="Pers_DTarihi" />
                    <asp:Parameter Name="Pers_Giris_Tarihi" />
                    <asp:Parameter Name="Pers_Cikis_Tarihi" />
                    <asp:Parameter Name="Pers_Adresi" />
                    <asp:Parameter Name="Pers_Ili" />
                    <asp:Parameter Name="Pers_Ilcesi" />
                    <asp:Parameter Name="Pers_Tel" />
                    <asp:Parameter Name="Pers_Cep" />
                    <asp:Parameter Name="Unvan_ID" />
                    <asp:Parameter Name="Bolum_ID" />
                    <asp:Parameter Name="Pers_Maas" />
                    <asp:Parameter Name="Pers_Email" />
                    <asp:Parameter Name="Pers_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
