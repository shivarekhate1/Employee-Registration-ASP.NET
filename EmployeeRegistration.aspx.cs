using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace ITP11AM
{
    public partial class EmployeeRegistration : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtName.Text) ||
                string.IsNullOrWhiteSpace(txtEmail.Text) ||
                string.IsNullOrWhiteSpace(txtPhone.Text) ||
                string.IsNullOrWhiteSpace(txtPosition.Text) ||
                string.IsNullOrWhiteSpace(txtDepartment.Text))
            {
                Response.Write("<script>alert('Please fill all fields before submitting.');</script>");
                return;
            }

            string name = txtName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string position = txtPosition.Text.Trim();
            string department = txtDepartment.Text.Trim();

            
            string connectionString = ConfigurationManager.ConnectionStrings["EmployeeDBConnectionString"].ConnectionString;

           
            string query = "INSERT INTO Employees (FullName, Email, Phone, Position, Department) VALUES (@FullName, @Email, @Phone, @Position, @Department)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    
                    command.Parameters.Add(new SqlParameter("@FullName", name));
                    command.Parameters.Add(new SqlParameter("@Email", email));
                    command.Parameters.Add(new SqlParameter("@Phone", phone));
                    command.Parameters.Add(new SqlParameter("@Position", position));
                    command.Parameters.Add(new SqlParameter("@Department", department));

                    try
                    {
                        connection.Open();
                        int rowsAffected = command.ExecuteNonQuery(); // Execute the query

                        if (rowsAffected > 0)
                        {
                            Response.Write("<script>alert('Employee registered successfully!');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Error: No rows inserted. Please try again.');</script>");
                        }
                    }
                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('Database error: " + ex.Message.Replace("'", "\\'") + "');</script>");
                    }
                    finally
                    {
                    
                        if (connection.State == System.Data.ConnectionState.Open)
                        {
                            connection.Close();
                        }
                    }
                }
            }
        }
    }
}
