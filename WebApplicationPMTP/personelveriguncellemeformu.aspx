<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personelveriguncellemeformu.aspx.cs" Inherits="WebApplication10.personelveriguncellemeformu" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Personel Veri Güncelleme Formu</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Personel Veri Güncelleme Formu</h1>
        <p>
            Personel Seçiniz:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID">
            </asp:DropDownList>
        </p>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" 
            SelectCommand="SELECT [Pers_Isim], [Pers_ID] FROM [tbl_Personeller] WHERE ([Pers_ID] = @Pers_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource3" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Pers_ID" HeaderText="Personel ID" ReadOnly="True" />
                <asp:BoundField DataField="Pers_Adi" HeaderText="Adı" />
                <asp:BoundField DataField="Pers_Soyadi" HeaderText="Soyadı" />
                <asp:BoundField DataField="Pers_DTarihi" HeaderText="Doğum Tarihi" />
                <asp:BoundField DataField="Pers_Giris_Tarihi" HeaderText="Giriş Tarihi" />
                <asp:BoundField DataField="Pers_Cikis_Tarihi" HeaderText="Çıkış Tarihi" />
                <asp:BoundField DataField="Pers_Adresi" HeaderText="Adres" />
                <asp:BoundField DataField="Pers_Ili" HeaderText="İl" />
                <asp:BoundField DataField="Pers_Ilcesi" HeaderText="İlçe" />
                <asp:BoundField DataField="Pers_Email" HeaderText="E-posta" />
                <asp:BoundField DataField="Pers_Tel" HeaderText="Telefon" />
                <asp:BoundField DataField="Pers_Cep" HeaderText="Cep Telefonu" />
                <asp:BoundField DataField="Bolum_ID" HeaderText="Bölüm ID" />
                <asp:BoundField DataField="Unvan_ID" HeaderText="Ünvan ID" />
                <asp:BoundField DataField="Pers_Maas" HeaderText="Maaş" />
            </Fields>
        </asp:DetailsView>

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" 
            SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Soyadi], [Pers_DTarihi], [Pers_Giris_Tarihi], [Pers_Cikis_Tarihi], [Pers_Adresi], [Pers_Ili], [Pers_Ilcesi], [Pers_Email], [Pers_Tel], [Pers_Cep], [Bolum_ID], [Unvan_ID], [Pers_Maas] FROM [tbl_Personeller] WHERE ([Pers_ID] = @Pers_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" DefaultValue="" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>

