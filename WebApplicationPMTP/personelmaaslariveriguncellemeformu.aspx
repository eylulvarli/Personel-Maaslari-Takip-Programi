<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="personelmaaslariveriguncellemeformu.aspx.cs" Inherits="WebApplication10.personelmaaslariveriguncellemeformu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
            text-align: center;
        }
        .auto-style3 {
            font-size: x-large;
        }
        .auto-style4 {
            font-size: small;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">PERSONEL MAAŞLARI VERİ GÜNCELLEME FORMU</h1>
        </div>
        <p>
            <span class="auto-style3">Personel Seçiniz:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </span>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Pers_Isim" DataValueField="Pers_ID" Height="23px" Width="153px" CssClass="auto-style4">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Pers_ID], [Pers_Isim] FROM [tbl_Personeller]"></asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style3" DataKeyNames="Maas_ID" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="50px" Width="125px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="Maas_ID" HeaderText="Maas_ID" InsertVisible="False" ReadOnly="True" SortExpression="Maas_ID" />
                    <asp:BoundField DataField="Pers_ID" HeaderText="Pers_ID" SortExpression="Pers_ID" />
                    <asp:BoundField DataField="Maas_Tarihi" HeaderText="Maas_Tarihi" SortExpression="Maas_Tarihi" />
                    <asp:BoundField DataField="Maas_Tutari" HeaderText="Maas_Tutari" SortExpression="Maas_Tutari" />
                    <asp:BoundField DataField="Maas_Komisyonu" HeaderText="Maas_Komisyonu" SortExpression="Maas_Komisyonu" />
                    <asp:BoundField DataField="Ay_ID" HeaderText="Ay_ID" SortExpression="Ay_ID" />
                    <asp:CommandField ShowEditButton="True" />
                </Fields>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            </asp:DetailsView>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Maas_ID], [Pers_ID], [Maas_Tarihi], [Maas_Tutari], [Maas_Komisyonu], [Ay_ID] FROM [tbl_Maaslar] WHERE ([Pers_ID] = @Pers_ID)" UpdateCommand="UPDATE tbl_Maaslar SET Pers_ID = @Pers_ID, Maas_Tarihi = @Maas_Tarihi, Maas_Tutari = @Maas_Tutari, Maas_Komisyonu = @Maas_Komisyonu, Ay_ID = @Ay_ID
Where Maas_ID = @Maas_ID">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Pers_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Pers_ID" />
                    <asp:Parameter Name="Maas_Tarihi" />
                    <asp:Parameter Name="Maas_Tutari" />
                    <asp:Parameter Name="Maas_Komisyonu" />
                    <asp:Parameter Name="Ay_ID" />
                    <asp:Parameter Name="Maas_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Height="35px" OnClientClick="window.close()" Text="Formu Kapat" Width="207px" />
        </p>
    </form>
</body>
</html>
