using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KullaniciYonetimi_KullaniciKayit : System.Web.UI.Page
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
                    db.oCommand = new SqlCommand("Select * from Users Where Id = " + Request.QueryString["Id"]);
                    db.oDataReader = db.ExecuteReader(db.oCommand);
                    if (db.oDataReader.Read()!=false)
                    {
                        
                        Email.Text = db.oDataReader["Email"].ToString();
                        Password.Text = db.oDataReader["Password"].ToString();
                        Fullname.Text = db.oDataReader["Fullname"].ToString();
                    }
                }
            }
        }
    }


    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        Users oUser = new Users();
        oUser.Fullname = Fullname.Text;
        oUser.Email = Email.Text;
        oUser.Password = Password.Text;
        oUser.Created_At = DateTime.Now;

        if (Request.QueryString["Id"] != null)
        {
            oUser.Id = Convert.ToInt32(Request.QueryString["Id"]);
            oUser.Update();
        }
        else
        {
            oUser.Insert();
        }
       
        Response.Redirect("KullaniciListe.aspx");
    }
}