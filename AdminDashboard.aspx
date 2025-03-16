<%@ Page Title="Admin Dashboard" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="ITP11AM.AdminDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .dashboard-header {
            text-align: center;
            margin-top: 20px;
        }

        .summary-card {
            margin: 20px 0;
        }

        .summary-card h3 {
            text-align: center;
        }

        .card-body {
            font-size: 18px;
        }

        .admin-section {
            margin-top: 30px;
        }

        .table {
            margin-top: 20px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="dashboard-header">
        <h1>Admin Dashboard</h1>
        <p>Welcome to the admin panel. Manage your system effectively.</p>
    </div>

  
    <div class="row">
        <div class="col-md-4 summary-card">
            <div class="card text-white bg-success mb-3">
                <div class="card-body">
                    <h3>Total Employees</h3>
                    <p><asp:Label ID="lblTotalEmployees" runat="server" Text="0"></asp:Label></p>
                </div>
            </div>
        </div>
        <div class="col-md-4 summary-card">
            <div class="card text-white bg-danger mb-3">
                <div class="card-body">
                    <h3>Total Departments</h3>
                    <p><asp:Label ID="lblTotalDepartments" runat="server" Text="0"></asp:Label></p>
                </div>
            </div>
        </div>
        <div class="col-md-4 summary-card">
            <div class="card text-white bg-warning mb-3">
                <div class="card-body">
                    <h3>Total Leaves This Year</h3>
                    <p><asp:Label ID="lblLeavesThisYear" runat="server" Text="0"></asp:Label></p>
                </div>
            </div>
        </div>
    </div>

 
    <div class="admin-section">
        <h2>Manage Employees</h2>
        <asp:Button ID="btnAddEmployee" runat="server" Text="Add Employee" CssClass="btn btn-primary" OnClick="btnAddEmployee_Click" />
        <asp:Button ID="btnManageDepartments" runat="server" Text="Manage Departments" CssClass="btn btn-secondary" OnClick="btnManageDepartments_Click" />
    </div>


    <div class="admin-section">
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
</asp:Content>
