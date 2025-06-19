<%@ Page Title="Resim Ortalama" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication10._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="hero-section">
        <img src="image/resimweb.png" class="hero-image" alt="Hero Image">
        <div class="hero-overlay"></div> 
        <div class="hero-text">
            <h1>Personel Maaşları Takip Programı (PMTP)</h1>
            <p>Personel maaşlarını kolayca takip edin ve yönetim işlemlerini hızlandırın.</p>
        </div>
    </div>
    
   <style>
    
    .hero-section {
        position: relative;
        width: 100%;
        height: 100vh;
        overflow: hidden;
    }

    
    .hero-image {
        width: 100%;
        height: 100%;
        object-fit: cover; 
        position: absolute;
        top: 0;
        left: 0;
    }

    
    .hero-overlay {
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.5); 
    }

    
    .hero-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: white;
        text-align: center;
        font-family: Arial, sans-serif;
        font-weight: bold; 
    }

    .hero-text h1 {
        font-size: 3.5em; 
        margin: 0;
        font-weight: bolder; 
    }

    .hero-text p {
        font-size: 1.8em; 
        margin-top: 20px;
        font-weight: 600; 
    }
</style>
 
</asp:Content>




