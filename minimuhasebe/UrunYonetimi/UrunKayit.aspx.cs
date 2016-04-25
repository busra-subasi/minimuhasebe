using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UrunYonetimi_UrunKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreateproduct_Click(object sender, EventArgs e)
    {
        Product oProduct = new Product();
        oProduct.Name = Name.Text;
        oProduct.Price = Convert.ToDecimal(Price.Text);
        oProduct.Tax_Rate = Convert.ToDecimal(Tax_Rate.Text);

        oProduct.Decription = Decription.Text;
        oProduct.Quantity = Convert.ToInt32(Quantity.Text);
        oProduct.Create_At = DateTime.Now;
        oProduct.Insert();
        Response.Redirect("UrunListe.aspx");
    }
}