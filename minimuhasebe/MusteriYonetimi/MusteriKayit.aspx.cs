using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class MusteriYonetimi_MusteriKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString.AllKeys.Length > 0)
            {
                if (Request.QueryString["Id"] != null)
                {
                    DataBaseConfig db = new DataBaseConfig();
                    db.oCommand = new SqlCommand("Select * from Customer Where Id = " + Request.QueryString["Id"]);
                    db.oDataReader = db.ExecuteReader(db.oCommand);
                    if (db.oDataReader.Read())
                    {
                        Firstname.Text = db.oDataReader["Firstname"].ToString();
                        Lastname.Text = db.oDataReader["Lastname"].ToString();
                        Companyname.Text = db.oDataReader["Companyname"].ToString();
                        Addres.Text = db.oDataReader["Addres"].ToString();
                        Email.Text = db.oDataReader["Email"].ToString();
                        Phone.Text = db.oDataReader["Phone"].ToString();
                        Tax_Number.Text = db.oDataReader["Tax_Number"].ToString();
                        Tax_Office.Text = db.oDataReader["Tax_Office"].ToString();
                    }

                }
            }
        }
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

        if (Request.QueryString["Id"] != null)
        {
            oCustomer.Id = Convert.ToInt32(Request.QueryString["Id"]);
            oCustomer.Update();
        }
        else
        {
            oCustomer.Insert();
        }


        Response.Redirect("MusteriListe.aspx");
    }
}