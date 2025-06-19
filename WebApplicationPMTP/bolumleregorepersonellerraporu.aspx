<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="bolumleregorepersonellerraporu.aspx.cs" Inherits="WebApplication10.bolumleregorepersonellerraporu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center"><span><strong>Bölümlere Göre Personeller Raporu<br /></strong></span></h1>

   
    <p>
        <span style="font-size: x-large">Bölüm Seçiniz:&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-1HF6L3T\SQLEXPRESS;Initial Catalog=db_wproje;Integrated Security=True;" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]">
        </asp:SqlDataSource>
    </p>

   
    <table class="w-100" style="background-color: #C0C0C0; border-style: groove; border-width: medium">
        <tr>
            <td style="height: 24px">Pers_ID</td>
            <td style="height: 24px">Pers_Adi</td>
            <td style="height: 24px">Pers_Giris_Tarihi</td>
            <td style="height: 24px">Pers_Ilcesi</td>
            <td style="height: 24px">Pers_Tel</td>
            <td style="height: 24px">Pers_Cep</td>
            <td style="height: 24px">Pers_Email</td>
            <td style="height: 24px">Bolum_ID</td>
            <td style="height: 24px">Unvan_ID</td>
            <td style="height: 24px">Pers_Aktif_Mi</td>
        </tr>

        <tr>
            
            <td  >
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Pers_ID") %></td>
                            <td><%# Eval("Pers_Adi") %></td>
                            <td><%# Eval("Pers_Giris_Tarihi") %></td>
                            <td><%# Eval("Pers_Ilcesi") %></td>
                            <td><%# Eval("Pers_Tel") %></td>
                            <td><%# Eval("Pers_Cep") %></td>
                            <td><%# Eval("Pers_Email") %></td>
                            <td><%# Eval("Bolum_ID") %></td>
                            <td><%# Eval("Unvan_ID") %></td>
                            <td><%# Eval("Pers_Aktif_Mi") %></td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>

   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-1HF6L3T\SQLEXPRESS;Initial Catalog=db_wproje;Integrated Security=True;" 
        SelectCommand="SELECT [Pers_ID], [Pers_Adi], [Pers_Giris_Tarihi], [Pers_Ilcesi], [Pers_Tel], [Pers_Cep], [Pers_Email], [Bolum_ID], [Unvan_ID], [Pers_Aktif_Mi] FROM [tbl_Personeller] WHERE [Bolum_ID] = @Bolum_ID">
        <SelectParameters>
            <asp:ControlParameter Name="Bolum_ID" ControlID="DropDownList1" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" Text="Formu Kapat" OnClientClick="window.close()" OnClick="Button1_Click" />
</asp:Content>
