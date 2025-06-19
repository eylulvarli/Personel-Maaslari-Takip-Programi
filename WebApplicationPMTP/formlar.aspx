<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="formlar.aspx.cs" Inherits="WebApplication10.formlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h1><strong><span class="auto-style1">PMTP</span></strong> <strong><span class="auto-style1">FORMLARI</span></strong></h1>
        
        <div class="form-row">
            <asp:Button ID="Button3" runat="server" Text="Personel Veri Giriş Formu" OnClientClick="target='_blank'" PostBackUrl="~/personelverigirisformu.aspx" CssClass="form-button" OnClick="Button3_Click" />
            <asp:Button ID="Button6" runat="server" Text="Personel Veri Güncelleme Formu" style="font-size: 12pt" PostBackUrl="~/personelveriguncellemeformu1.aspx" CssClass="form-button" />
        </div>

        <div class="form-row">
            <asp:Button ID="Button4" runat="server" Text="Bölüm Veri Giriş Formu" OnClientClick="target='_blank'" PostBackUrl="~/bolumverigirisformu.aspx" CssClass="form-button" />
            <asp:Button ID="Button7" runat="server" Text="Personel Maaşı Veri Giriş Formu" OnClientClick="target='_blank'" PostBackUrl="~/personelmaasiverigirisformu.aspx" CssClass="form-button" />
        </div>

        <div class="form-row">
            <asp:Button ID="Button5" runat="server" Text="Personel Maaşı Güncelleme Formu" OnClientClick="target='_blank'" PostBackUrl="~/personelmaaslariveriguncellemeformu.aspx" CssClass="form-button" />
            <asp:Button ID="Button8" runat="server" Text="Bölüm Veri Güncelleme Formu" OnClientClick="target='_blank'" PostBackUrl="~/bolumveriguncellemeformu.aspx" CssClass="form-button" />
        </div>
    </div>
    <style>
    
    body {
        font-size: 14px; 
        font-family: Arial, sans-serif;
    }

    .form-container {
        width: 100%;
        text-align: center;
        margin-top: 50px;
    }

    .form-title {
        font-size: 14px; 
        font-weight: bold;
        line-height: normal;
        margin-bottom: 40px;
        color: #333;
    }

    .form-row {
        margin-bottom: 20px;
        display: flex;
        justify-content: center;
        gap: 40px; 
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

    
    @media (max-width: 768px) {
        .form-row {
            flex-direction: column; 
            gap: 10px;
        }
        
        .form-button {
            width: 90%; 
        }
    }
    .auto-style1 {
        font-size: 50px;
    }
</style>

</asp:Content>

