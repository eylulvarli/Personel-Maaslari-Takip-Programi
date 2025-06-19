<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="raporlar.aspx.cs" Inherits="WebApplication10.raporlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h1 class="auto-style1"><strong><span class="auto-style2">PMTP</span> <span class="auto-style2">RAPORLARI</span></strong></h1>

        <div class="form-row">
            <asp:Button ID="Button3" runat="server" Text="Personel İletişim Raporu" CssClass="form-button" OnClick="Button3_Click" OnClientClick="target='_blank'" PostBackUrl="~/personeliletisimraporu.aspx" />
            <asp:Button ID="Button7" runat="server" Text="Bölümlere Göre Personeller Raporu" CssClass="form-button" OnClientClick="target='_blank'" PostBackUrl="~/bolumleregorepersonellerraporu.aspx" />
        </div>

        <div class="form-row">
            <asp:Button ID="Button4" runat="server" Text="Personele Göre Maaşlar Raporu" CssClass="form-button" OnClientClick="target='_blank'" PostBackUrl="~/personelegoremaaslarraporu.aspx" />
            <asp:Button ID="Button8" runat="server" Text="Yıllık Personel Maaşları Grafiği" CssClass="form-button" OnClientClick="target='_blank'" PostBackUrl="~/yillikpersonelmaastoplamlarigrafigi.aspx" />
        </div>
    </div>

    <style>
    
    body {
        font-size: 16px; 
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4; 
    }

    .form-container {
        width: 100%;
        text-align: center;
        margin-top: 50px;
    }

    h1 {
        font-size: 28px;
        font-weight: ;
        margin-bottom: 40px;
        color: #333;
    }

    .form-row {
        margin-bottom: 20px;
        display: flex;
        justify-content: center;
        gap: 30px; 
    }

    
    .form-button {
        width: 350px;  
        font-size: 16px; 
        padding: 20px;
        background-color: mediumslateblue; 
        color: white;
        border: none;
        border-radius: 30px; 
        cursor: pointer;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); 
        transition: all 0.3s ease; 
        text-align: center; 
        font-weight: normal; 
    }

    
    .form-button:hover {
        background-color: darkmagenta; 
        box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.2); 
        transform: translateY(-2px); 
    }

    
    .form-button:focus {
        outline: none; 
        box-shadow: 0px 0px 10px rgba(0, 123, 255, 0.6); 
    }

    
    .form-button:active {
        transform: translateY(2px); 
    }

    
        .auto-style1 {
        font-size: 40px;
    }
    .auto-style2 {
        font-size: 50px;
    }

    
        </style>
</asp:Content>
