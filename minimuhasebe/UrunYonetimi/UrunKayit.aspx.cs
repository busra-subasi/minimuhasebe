using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class UrunYonetimi_UrunKayit : System.Web.UI.Page
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
                    db.oCommand = new SqlCommand("Select * from Product Where Id = " + Request.QueryString["Id"]);
                    db.oDataReader = db.ExecuteReader(db.oCommand);
                    if (db.oDataReader.Read())
                    {
                        Name.Text = db.oDataReader["Name"].ToString();
                        Price.Text = db.oDataReader["Price"].ToString();
                        Tax_Rate.Text = db.oDataReader["Tax_Rate"].ToString();

                        Decription.Text = db.oDataReader["Decription"].ToString();
                        Quantity.Text = db.oDataReader["Quantity"].ToString();
                    }

                }
            }
        }
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

        if (Request.QueryString["Id"] != null)
        {
            oProduct.Id = Convert.ToInt32(Request.QueryString["Id"]);
            oProduct.Update();
        }
        else
        {
            oProduct.Insert();
        }
        Response.Redirect("UrunListe.aspx");
    }
}