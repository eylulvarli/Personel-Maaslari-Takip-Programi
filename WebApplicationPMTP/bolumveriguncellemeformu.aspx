<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bolumveriguncellemeformu.aspx.cs" Inherits="WebApplication10.bolumveriguncellemeformu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: large;
            margin-left: 0px;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <h1 class="auto-style1">BÖLÜM VERİ GÜNCELLEME FORMU</h1>
    <form id="form1" runat="server">
        <div>
            <span class="auto-style4">Bölüm Seçiniz:&nbsp;</span><span class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Bolum_Adi" DataValueField="Bolum_ID" Height="29px" Width="146px">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp; </span>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi] FROM [tbl_Bolumler]"></asp:SqlDataSource>
            <br />
            <div class="auto-style1">
            </div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:db_wproje.ppmt %>" SelectCommand="SELECT [Bolum_ID], [Bolum_Adi], [Bolum_Tel], [Yonetici_ID] FROM [tbl_Bolumler] WHERE ([Bolum_ID] = @Bolum_ID)" UpdateCommand="UPDATE tbl_Bolumler SET Bolum_Adi = @Bolum_Adi, Bolum_Tel = @Bolum_Tel, Yonetici_ID = @Yonetici_ID
WHERE ([Bolum_ID] = @Bolum_ID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Bolum_ID" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Bolum_Adi" />
                    <asp:Parameter Name="Bolum_Tel" />
                    <asp:Parameter Name="Yonetici_ID" />
                    <asp:Parameter Name="Bolum_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" CssClass="auto-style2" DataKeyNames="Bolum_ID" DataSourceID="SqlDataSource2" GridLines="Vertical" Height="110px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="205px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Bolum_ID" HeaderText="Bolum_ID" InsertVisible="False" ReadOnly="True" SortExpression="Bolum_ID" />
                <asp:BoundField DataField="Bolum_Adi" HeaderText="Bolum_Adi" SortExpression="Bolum_Adi" />
                <asp:BoundField DataField="Bolum_Tel" HeaderText="Bolum_Tel" SortExpression="Bolum_Tel" />
                <asp:BoundField DataField="Yonetici_ID" HeaderText="Yonetici_ID" SortExpression="Yonetici_ID" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        </asp:DetailsView>
        <br />
        <asp:Button ID="Button1" runat="server" Height="37px" OnClientClick="window.close()" Text="Formu Kapat" Width="191px" />
    </form>
</body>
</html>
