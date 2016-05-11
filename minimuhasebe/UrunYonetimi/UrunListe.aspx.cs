using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UrunYonetimi_UrunListe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.AllKeys.Length > 0)
        {

            if (Request.QueryString["Id"] != null && Request.QueryString["Id"] != "")
            {
                Product oProduct = new Product();
                oProduct.Id = Convert.ToInt32(Request.QueryString["Id"]);
                oProduct.Delete();
                Response.Redirect("UrunListe.aspx");
            }


        }

    }
    protected void btnrefresh_Click(object sender, EventArgs e)
    {
        Response.Redirect("UrunListe.aspx");
    }
}