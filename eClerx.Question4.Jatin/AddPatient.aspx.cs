using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace eClerx.Question4.Jatin
{
    public partial class AddPatient : System.Web.UI.Page
    {
        private SqlConnection conn = null;
        private SqlCommand cmd = null;
        private SqlDataReader reader = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnAddPatiend_Click(object sender, EventArgs e)
        {
            using (conn = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb; Initial Catalog=HR; Integrated Security=true"))
            {
                using (cmd = new SqlCommand("usp_patient", conn))
                {
                    var age = int.Parse(txtAge.Text);
                    
                    cmd.CommandType = System.Data.CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@PatientName", txtPatientName.Text);
                    cmd.Parameters.AddWithValue("@Gender", DDLPatientGender.Text);
                    cmd.Parameters.AddWithValue("@Age", age);
                    cmd.Parameters.AddWithValue("@ContactNumber", txtContactNumber.Text);
                    cmd.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text);
                    
                    
                        conn.Open();
                    
                    cmd.ExecuteNonQuery(); //used for DML operation
                }
                lblSuccessful.Text = "Patient Added Successfully";
            }
           
        }

        protected void BtnSearchPatiend_Click(object sender, EventArgs e)
        {
            Response.Redirect("SearchPatient.aspx");
        }
    }
}