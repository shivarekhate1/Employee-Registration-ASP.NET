<%@ Page Title="Employee Registration" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="EmployeeRegistration.aspx.cs" Inherits="ITP11AM.EmployeeRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <h2 class="mt-4 mb-4">Employee Registration</h2>
        <asp:Panel ID="RegistrationPanel" runat="server" CssClass="card p-4">
            <asp:TextBox ID="txtName" runat="server" CssClass="form-control mb-3" Placeholder="Full Name" />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control mb-3" Placeholder="Email Address" />
            <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control mb-3" Placeholder="Phone Number" />
            <asp:TextBox ID="txtPosition" runat="server" CssClass="form-control mb-3" Placeholder="Position" />
            <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control mb-3" Placeholder="Department" />
            <asp:Button ID="btnRegister" runat="server" CssClass="btn btn-primary" Text="Register" OnClick="btnRegister_Click" />
        </asp:Panel>
    </div>
</asp:Content>
