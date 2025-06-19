<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication10.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Kullanıcı Girişi</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1 class="auto-style1"><strong>Personel Maaşları Takip Programı (PMTP)</strong></h1>
            <h3 class="text-center">Kullanıcı Girişi</h3>

            <div class="form-group">
                <label for="txtUsername">Kullanıcı Adı</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Kullanıcı Adı" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
            </div>

            <div class="form-group">
                <label for="txtPassword">Şifre</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Şifre"></asp:TextBox>
            </div>

           
            <div class="form-group">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Visible="false" CssClass="text-center" />
            </div>

            <div class="form-group text-center">
                <asp:Button ID="btnLogin" runat="server" Text="Giriş Yap" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
