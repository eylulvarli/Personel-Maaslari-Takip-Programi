<%@ Page Title="Yardım" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="yardım.aspx.cs" Inherits="WebApplication10.yardım" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html lang="tr">
    <head>
        <meta charset="utf-8" />
        <title>Yardım</title>
        <style type="text/css">
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            h2 {
                color: #333;
            }

            #section-d {
                background-color: #f4e1b2;
                padding: 3rem;
                margin: 2rem;
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
            }

            #section-d .box {
                padding: 2rem;
                width: 45%;
                margin: 1%;
                background-color: #d3d3d3;
                border-radius: 8px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            }

            .content-title {
                color: #2c3e50;
            }

            footer {
                background-color: #95a5a6;
                padding: 2rem;
                text-align: center;
                color: white;
                margin-top: 3rem;
            }

            footer a {
                color: #ecf0f1;
                text-decoration: none;
            }

            footer a:hover {
                color: #2ecc71;
            }

        </style>
    </head>
    <body>
        <section id="section-d">
            <div class="box">
                <h2 class="content-title">Yardım - Sıkça Sorulan Sorular</h2>
                <ul>
                    <li>
                        <strong>1. Hesabımı nasıl oluşturabilirim?</strong>
                        <p>Hesap oluşturmak için ana sayfada "Kayıt Ol" butonuna tıklayın ve gerekli bilgileri girin.</p>
                    </li>
                    <li>
                        <strong>2. Şifremi unuttum, ne yapmalıyım?</strong>
                        <p>Şifrenizi sıfırlamak için giriş sayfasındaki "Şifremi Unuttum" seçeneğine tıklayın ve e-posta adresinizi girin.</p>
                    </li>
                    <li>
                        <strong>3. Hesabımı nasıl silerim?</strong>
                        <p>Hesabınızı silmek için "Hesap Ayarları" sayfasına gidin ve "Hesap Sil" seçeneğini tıklayın.</p>
                 
                </ul>
            </div>
        </section>

       
    </body>
    </html>
</asp:Content>

