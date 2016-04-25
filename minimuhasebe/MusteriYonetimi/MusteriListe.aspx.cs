using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class MusteriYonetimi_MusteriListe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString.AllKeys.Length > 0)
        {

            if (Request.QueryString["Id"] != null && Request.QueryString["Id"] != "")
            {
                Customer oCustomer = new Customer();
                oCustomer.Id = Convert.ToInt32(Request.QueryString["Id"]);
                oCustomer.Delete();
                Response.Redirect("MusteriListe.aspx");
            }


        }
    }
}