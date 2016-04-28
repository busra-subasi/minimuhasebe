using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class FinansYonetimi_YeniOdeme : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Customer oCustomer = new Customer();
        ddlCustomer.DataSource = oCustomer.SelectAll();
        ddlCustomer.Items.Add(new ListItem { Value = "0",Text = "Seçiniz" });
        
        for (int i = 0; i < oCustomer.SelectAll().Rows.Count; i++)
        {
            ddlCustomer.Items.Add(new ListItem { Value = oCustomer.SelectAll().Rows[i]["Id"].ToString(), Text = oCustomer.SelectAll().Rows[i]["Companyname"].ToString() });
        }

    }

    protected void btnCreatePayment_Click(object sender, EventArgs e)
    {
        PaymentTransaction oPaymentTransaction = new PaymentTransaction();
        oPaymentTransaction.Id_Customer = Convert.ToInt32(ddlCustomer.SelectedValue);
        oPaymentTransaction.Id_User_Create = Convert.ToInt32(Session["Id"]);
        oPaymentTransaction.Payment_Type = 1;
        oPaymentTransaction.Amount = Convert.ToDecimal(Amount.Text);
        oPaymentTransaction.Description = Description.Text;
        oPaymentTransaction.Create_At = DateTime.Now;
        oPaymentTransaction.Insert();
        Response.Redirect("/MusteriYonetimi/MusteriDetay.aspx?Id="+ ddlCustomer.SelectedValue);



    }
}