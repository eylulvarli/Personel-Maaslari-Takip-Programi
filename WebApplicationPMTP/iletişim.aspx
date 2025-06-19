<%@ Page Title="İletişim" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="iletişim.aspx.cs" Inherits="WebApplication10.iletişim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html lang="tr">
    <head>
        <meta charset="utf-8" />
        <title>İletişim</title>
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

            #Contact {
                border-top: 1px solid #34495e;
                padding-top: 1rem;
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

            @media screen and (max-width: 768px) {
                html {
                    font-size: 14px;
                }

                #section-d .box {
                    width: 100%;
                    margin-bottom: 2rem;
                }
            }
        </style>
    </head>
    <body>
        <section id="section-d">
            <div class="box">
                <h2 class="content-title" id="Contact">İLETİŞİM</h2>
                <p><strong>A Holding A.Ş</strong></p>
                <p>Nakkaştepe, Azizbey Sokak, No: 1, Kuzguncuk 34674, İstanbul</p>
                <p><strong>Telefon:</strong></p>
                <p>0 (216) 531 00 00</p>
                <p>0 (216) 531 00 99</p>
            </div>
        </section>

    </body>
    </html>
</asp:Content>
