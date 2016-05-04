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

            SalesInvoice oSalesInvoice = new SalesInvoice();

            oSalesInvoice.Id_Customer = Convert.ToInt32(Request.Form["SalesInvoice[id_customer]"]);
            oSalesInvoice.Id_User_Create = Convert.ToInt32(Session["Id"]);

            oSalesInvoice.Tax_Number = Convert.ToInt32(Request.Form["SalesInvoice[tax_number]"].ToString());
            oSalesInvoice.Tax_Office = Request.Form["SalesInvoice[tax_office]"].ToString();


            oSalesInvoice.Grand_Total = Convert.ToDecimal(Request.Form["SalesInvoice[grandtotal]"]);
            oSalesInvoice.Tax_Total = Convert.ToDecimal(Request.Form["SalesInvoice[taxtotal]"]);
            oSalesInvoice.Total = Convert.ToDecimal(Request.Form["SalesInvoice[total]"]);

            oSalesInvoice.Description = Request.Form["SalesInvoice[description]"].ToString();
            oSalesInvoice.Create_At = DateTime.Now;
            int id = Convert.ToInt32(oSalesInvoice.Insert(true));
          
            string[] items = Request.Form["sales_invoice_item_list_form_input"].Split('/');
            for (int i = 0; i < items.Length; i++)
            {
                string[] item = items[i].Split('-'); //// item[]/ item[] --->itemformat  id-name-quantity-price-taxrate-total-taxtotal-grandtotal/ id-name-quantity-price-taxrate-total-taxtotal-grandtotal

                SalesInvoiceItem oSalesInvoiceItem = new SalesInvoiceItem();
                oSalesInvoiceItem.Id_Sales_Invoice = id;// fatura id

                oSalesInvoiceItem.Id_Product = Convert.ToInt32(item[0]);
                oSalesInvoiceItem.Quantity   = Convert.ToInt32(item[2]);
                oSalesInvoiceItem.Price      = Convert.ToDecimal(item[3]);
                oSalesInvoiceItem.Tax_Rate   = Convert.ToDecimal(item[4]);
                oSalesInvoiceItem.Insert();
            }

            PaymentTransaction oPaymentTransaction = new PaymentTransaction();
            oPaymentTransaction.Id_User_Create     = Convert.ToInt32(Session["Id"]);
            oPaymentTransaction.Id_Customer        = Convert.ToInt32(Request.Form["SalesInvoice[id_customer]"]);
            oPaymentTransaction.Payment_Type       = 0;
            oPaymentTransaction.Amount             = Convert.ToDecimal(Request.Form["SalesInvoice[grandtotal]"]);
            oPaymentTransaction.Description        = "Fatura Kesim";
            oPaymentTransaction.Create_At          = DateTime.Now;
            oPaymentTransaction.Insert();
            Response.Redirect("FaturaDetay.aspx?Id=" + id);
        }
        
    }
}