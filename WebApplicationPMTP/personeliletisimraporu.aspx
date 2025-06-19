<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="personeliletisimraporu.aspx.cs" Inherits="WebApplication10.personeliletisimraporu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center"><strong>Personel İletişim Raporu</strong></h1>
    
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate>
            <table class="w-100" border="1">
                <thead>
                    <tr>
                        <th style="width: 110px">Pers_ID</th>
                        <th style="width: 112px">Pers_Adi</th>
                        <th style="width: 176px">Pers_Giris_Tarihi</th>
                        <th style="width: 124px">Pers_Adresi</th>
                        <th style="width: 129px">Pers_Ilcesi</th>
                        <th style="width: 140px">Pers_Ili</th>
                        <th style="width: 133px">Pers_Tel</th>
                        <th style="width: 111px">Pers_Cep</th>
                        <th style="width: 106px">Pers_Email</th>
                        <th style="width: 101px">Bolum_ID</th>
                        <th style="width: 87px">Unvan_ID</th>
                        <th style="width: 87px">Pers_Aktif_Mi</th>
                    </tr>
                </thead>
        </HeaderTemplate>
        
        <ItemTemplate>
            <tr>
                <td><%# Eval("Pers_ID") %></td>
                <td><%# Eval("Pers_Adi") %></td>
                <td><%# Eval("Pers_Giris_Tarihi") %></td>
                <td><%# Eval("Pers_Adresi") %></td>
                <td><%# Eval("Pers_Ilcesi") %></td>
                <td><%# Eval("Pers_Ili") %></td>
                <td><%# Eval("Pers_Tel") %></td>
                <td><%# Eval("Pers_Cep") %></td>
                <td><%# Eval("Pers_Email") %></td>
                <td><%# Eval("Bolum_ID") %></td>
                <td><%# Eval("Unvan_ID") %></td>
                <td><%# Eval("Pers_Aktif_Mi") %></td>
            </tr>
        </ItemTemplate>

        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>

   
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Data Source=DESKTOP-1HF6L3T\SQLEXPRESS;Initial Catalog=db_wproje;Integrated Security=True;"
        SelectCommand="SELECT Pers_ID, Pers_Adi, Pers_Giris_Tarihi, Pers_Adresi, Pers_Ilcesi, Pers_Ili, Pers_Tel, Pers_Cep, Pers_Email, Bolum_ID, Unvan_ID, Pers_Aktif_Mi FROM tbl_Personeller">
    </asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" OnClientClick="window.close()" Text="Raporu Kapat" />

    
</asp:Content>
