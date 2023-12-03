using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MeetingMinutes : System.Web.UI.Page
{
    private static string connectionString = ConfigurationManager.AppSettings["ConnectionString"];
    private SqlConnection SqlConnection = new SqlConnection(connectionString);
    private SqlDataAdapter SqlDataAdapter = new SqlDataAdapter();
    private SqlCommand SqlCommand = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedValue =="Corporate")
        {
            string query = "SELECT CustomerName FROM Corporate_Customer_Tbl";
            populateControl(query);
        }
    }

    private void populateControl(string query)
    {
        SqlConnection conn = new SqlConnection(connectionString);

        SqlDataAdapter adp = new SqlDataAdapter();
        DataSet dset = new DataSet();

        try
        {
            conn.Open();
            
            adp.Fill(dset);
            ddlCustomerName.DataTextField = "CustomerName";
            ddlCustomerName.DataValueField = "CustomerName";
            ddlCustomerName.DataSource = dset;
            ddlCustomerName.DataBind();

        }
        catch (Exception ex)
        {

        }
        finally
        {
            conn.Close();
           
        }
    }
}