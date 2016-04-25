using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MusteriYonetimi_MusteriKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void btnCreateCustomer_Click(object sender, EventArgs e)
    {
        Customer oCustomer = new Customer();

        oCustomer.Firstname = Firstname.Text;
        oCustomer.Lastname = Lastname.Text;
        oCustomer.Companyname = Companyname.Text;
        oCustomer.Addres = Addres.Text;
        oCustomer.Email = Email.Text;
        oCustomer.Phone = Phone.Text;
        oCustomer.Tax_Number = Convert.ToInt32(Tax_Number.Text);
        oCustomer.Tax_Office = Tax_Office.Text;
        oCustomer.Create_At = DateTime.Now;

        oCustomer.Insert();

        Response.Redirect("MusteriListe.aspx");
    }
}