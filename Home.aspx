<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ITP11AM.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .image-scroll-container {
            overflow: hidden;
            white-space: nowrap;
        }
        
        .image-scroll-container img {
            display: inline-block;
            animation: scroll-right-left 30s linear infinite;
        }
        
        @keyframes scroll-right-left {
            0% { transform: translateX(100%); }
            100% { transform: translateX(-100%); }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container-fluid text-center accordion-body">
        <h1 class="display-8">Welcome to IT Preneur Employee Management System</h1>

        
        <div class="image-scroll-container">
            <asp:Image ID="HomePageImage1" runat="server" ImageUrl="~/Image/Home1.jpg" CssClass="img-fluid mb-6" Alt="Main Image" Height="251px" Width="550px" />
            <asp:Image ID="HomePageImage2" runat="server" ImageUrl="~/Image/Itpreneur-achiv.jpg" CssClass="img-fluid mb-6" Alt="Main Image" Height="251px" Width="550px" />
            <asp:Image ID="HomePageImage3" runat="server" ImageUrl="~/Image/itpreneur_cover.jpg" CssClass="img-fluid mb-6" Alt="Main Image" Height="251px" Width="550px" />
            <asp:Image ID="HomePageImage4" runat="server" ImageUrl="~/Image/itp2.jpg" CssClass="img-fluid mb-6" Alt="Main Image" Height="251px" Width="550px" />
        </div>
    </div>
</asp:Content>
