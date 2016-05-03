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

            SalesInvoice oSalesInvoice = new SalesInvoice();

            oSalesInvoice.Id_Customer = Convert.ToInt32(Request.Form["SalesInvoice[id_customer]"]);
            oSalesInvoice.Id_User_Create = 1;

            oSalesInvoice.Tax_Number = Convert.ToInt32(Request.Form["SalesInvoice[tax_number]"].ToString());
            oSalesInvoice.Tax_Office = Request.Form["SalesInvoice[tax_office]"].ToString();


            oSalesInvoice.Grand_Total = Convert.ToDecimal(Request.Form["SalesInvoice[grandtotal]"]);
            oSalesInvoice.Tax_Total = Convert.ToDecimal(Request.Form["SalesInvoice[taxtotal]"]);
            oSalesInvoice.Total = Convert.ToDecimal(Request.Form["SalesInvoice[total]"]);

            oSalesInvoice.Description = Request.Form["SalesInvoice[description]"].ToString();
            oSalesInvoice.Create_At = DateTime.Now;
            int id = Convert.ToInt32(oSalesInvoice.Insert(true));
            Response.Write("Murat" + id.ToString());
        }
        
    }
}