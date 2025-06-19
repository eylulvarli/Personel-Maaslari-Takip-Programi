<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="personelegoremaaslarraporu.aspx.cs" Inherits="WebApplication10.personelegoremaaslarraporu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 class="text-center"><span><strong>Personele Göre Maaşlar Raporu<br /></strong></span></h1>

    <p>
        Personel Seçiniz:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" AutoPostBack="True">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-1HF6L3T\SQLEXPRESS;Initial Catalog=db_wproje;Integrated Security=True;" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]">
        </asp:SqlDataSource>
    </p>


     <table class="w-100" style="background-color: #C0C0C0; border-style: groove; border-width: medium">
        <tr>
            <td>Maas_ID</td>
            <td>Maas_Tarihi</td>
            <td>Maas_Tutari</td>
            <td>Maas_Komisyonu</td>
            <td>Maas_Toplam</td>
            <td>Maas_Yili</td>

        </tr>
            <tr>
            
            <td colspan="10">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Maas_ID") %></td>
                            <td><%# Eval("Maas_Tarihi") %></td>
                            <td><%# Eval("Maas_Tutari") %></td>
                            <td><%# Eval("Maas_Komisyonu") %></td>
                            <td><%# Eval("Maas_Toplam") %></td>
                            <td><%# Eval("Maas_Yili") %></td>
                            
                        </tr>

            </ItemTemplate>
            </asp:Repeater>
            </td>
        </tr>
    </table>
    

   
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-1HF6L3T\SQLEXPRESS;Initial Catalog=db_wproje;Integrated Security=True;" 
        SelectCommand="SELECT [Maas_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Maas_Toplam], [Maas_Yili] FROM [tbl_Maaslar] WHERE [Pers_ID] = @Pers_ID">
        <SelectParameters>
            <asp:ControlParameter Name="Pers_ID" ControlID="DropDownList1" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" Text="Formu Kapat" OnClientClick="window.close()" OnClick="Button1_Click" />
</asp:Content>
