<%@ Page Title="Employee Dashboard" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="EmployeeDashboard.aspx.cs" Inherits="ITP11AM.EmployeeDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-header {
            text-align: center;
            margin-top: 20px;
        }

        .card {
            margin: 20px;
        }

        .alert {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="dashboard-header">
        <h1>Employee Dashboard</h1>
        <p>Manage your employee records efficiently.</p>
    </div>

    <!-- Success Message -->
    <asp:Label ID="lblMessage" runat="server" CssClass="alert alert-success" Visible="false"></asp:Label>

    <div class="row">
        <!-- Employee CRUD Form -->
        <div class="col-md-6">
            <h2>Add New Employee</h2>
            <div class="form-group">
                <label for="txtFirstName">First Name:</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtLastName">Last Name:</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="ddlDepartment">Department:</label>
                <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control">
                    <asp:ListItem Text="IT" Value="IT"></asp:ListItem>
                    <asp:ListItem Text="HR" Value="HR"></asp:ListItem>
                    <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                </asp:DropDownList>
            </div>
            <div class="form-group">
                <label for="txtHireDate">Hire Date:</label>
                <asp:TextBox ID="txtHireDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
            </div>
            <asp:Button ID="btnAddEmployee" runat="server" Text="Add Employee" CssClass="btn btn-primary" OnClick="btnAddEmployee_Click" />
        </div>

        <div class="col-md-12">
            <h2>Employee List</h2>
            <asp:GridView ID="gvEmployeeList" runat="server" AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="EmployeeID"
                OnRowEditing="gvEmployeeList_RowEditing" 
                OnRowUpdating="gvEmployeeList_RowUpdating"
                OnRowCancelingEdit="gvEmployeeList_RowCancelingEdit"
                OnRowDeleting="gvEmployeeList_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="EmployeeID" HeaderText="Employee ID" ReadOnly="True" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="Department" HeaderText="Department" />
                    <asp:BoundField DataField="HireDate" HeaderText="Hire Date" DataFormatString="{0:yyyy-MM-dd}" />
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
