using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplicationAug
{
    public partial class DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS)) 
            {
                SqlCommand cmd = new SqlCommand("Use Employer Select EmployerClassType, EmployerClassName from Sheet1", con);
                con.Open();
                //Connected to Employer Database, Reconfigure for Connection in Webconfig file from World Database to Employer DB
                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "EmployerClassName";
                DropDownList1.DataValueField = "EmployerClassType";
                DropDownList1.DataBind();

            }
        }
    }
}