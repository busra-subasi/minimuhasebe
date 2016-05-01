using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinansYonetimi_FaturaKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      

        if (Request.RequestType == "POST") {
            Response.Write(Request.Form["SalesInvoice[id_customer]"].ToString());
        }
        
    }
}