using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class FinansYonetimi_Ajax : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.AllKeys.Length > 0)
        {
            DataBaseConfig dt = new DataBaseConfig();

            if (Request.QueryString["op"] == "getcustomer")
            {
                dt.oCommand = new SqlCommand("select * from Customer where Id=" + Request.QueryString["Id"]);
                dt.oDataReader = dt.ExecuteReader(dt.oCommand);

                if (dt.oDataReader.Read())
                {
                    //{"id_product":7,"tax_office":"office","tax_number":1231231}
                    Response.Write(dt.oDataReader["Id"] + ":" + dt.oDataReader["Tax_Office"] + ":" + dt.oDataReader["Tax_Number"]);
                }
            }
            else if (Request.QueryString["op"] == "getproductprice")
            {
                dt.oCommand = new SqlCommand("select * from Product where Id=" + Request.QueryString["Id"]);
                dt.oDataReader = dt.ExecuteReader(dt.oCommand);

                if (dt.oDataReader.Read())
                {
                    //{ "id_product":6,"name":"Product1","price":"120.0000","tax_rate":"0.0500"}
                    Response.Write(dt.oDataReader["Id"] + ":" + dt.oDataReader["Name"] + ":" + dt.oDataReader["Price"] + ":" + dt.oDataReader["Tax_Rate"]);
                }
            }

        }
    }
}