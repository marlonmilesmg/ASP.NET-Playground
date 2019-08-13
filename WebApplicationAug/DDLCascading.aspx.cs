﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplicationAug
{
    public partial class DDLCascading : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlContinents.DataSource = GetData("spGetContinents", null);
                ddlContinents.DataBind();

                ListItem liContinent = new ListItem("Select Continent", "-1");
                ddlContinents.Items.Insert(0, liContinent);

                ListItem liCountry = new ListItem("Select Country", "-1");
                ddlCountries.Items.Insert(0, liCountry);

                ListItem liCity = new ListItem("Select City", "-1");
                ddlCities.Items.Insert(0, liCity);

                ddlCountries.Enabled = false;
                ddlCities.Enabled = false;


            }
        }

        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {
            string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
        
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter !=null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }
            DataSet DS = new DataSet();
            da.Fill(DS);

            return DS;

        }

        protected void ddlContinents_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlContinents.SelectedIndex == 0)
            {
                ddlCountries.SelectedIndex = 0;
                ddlCountries.Enabled = false;

                ddlCities.SelectedIndex = 0;
                ddlCities.Enabled = false;

            }
            else
            {
                ddlCountries.Enabled = true;
                SqlParameter parameter = new SqlParameter("@ContinentId", ddlContinents.SelectedValue);
                DataSet DS = GetData("spGetCountriesByContinentId", parameter);

                ddlCountries.DataSource = DS;
                ddlCountries.DataBind();

                ListItem liCountry = new ListItem("Select Country", "-1");
                ddlCountries.Items.Insert(0, liCountry);

                ddlCities.SelectedIndex = 0;
                ddlCities.Enabled = false;
            }
        }

        protected void ddlCountries_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCountries.SelectedIndex == 0)
            {
                ddlCities.SelectedIndex = 0;
                ddlCities.Enabled = false;
            }
            else
            {
                ddlCities.Enabled = true;
                SqlParameter parameter = new SqlParameter("@CountryId", ddlCountries.SelectedValue);
                DataSet DS = GetData("spGetCitiesByCountryId", parameter);

                ddlCities.DataSource = DS;
                ddlCities.DataBind();

                ListItem liCity = new ListItem("Select City", "-1");
                ddlCities.Items.Insert(0, liCity);
            }
        }
    }
}