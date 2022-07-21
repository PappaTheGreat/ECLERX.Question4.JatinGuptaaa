using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace eClerx.Question4.Jatin
{
    
    public partial class SearchPatient : System.Web.UI.Page
    {
        private SqlConnection conn = null;
        private SqlCommand cmd = null;
        private SqlDataReader reader = null;
        private DataSet ds = null;
        private SqlDataAdapter adp = null;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSearch_Click(object sender, EventArgs e)
        {
            this.getdata();

        }
        public void getdata()
        {
            using (conn = new SqlConnection(@"Data Source=(localdb)\mssqllocaldb; Initial Catalog=HR; Integrated Security=true"))
            {
                using (adp = new SqlDataAdapter("usp_searchdoc", conn))
                {
                    adp.SelectCommand.CommandType = CommandType.StoredProcedure;
                    adp.SelectCommand.Parameters.AddWithValue("@doctorsname", txtSearchDocName.Text);
                    ds = new DataSet();
                    adp.Fill(ds, "PatientInformation");
                    GridView1.DataSource = ds.Tables["PatientInformation"];
                    GridView1.DataBind();
                }
            }
        }
    }
}