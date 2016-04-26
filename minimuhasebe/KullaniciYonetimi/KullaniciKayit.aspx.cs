using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class KullaniciYonetimi_KullaniciKayit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCreateUser_Click(object sender, EventArgs e)
    {
        Users oUser = new Users();
        oUser.Fullname = Fullname.Text;
        oUser.Email = Email.Text;
        oUser.Password = Password.Text;
        oUser.Created_At = DateTime.Now;
        oUser.Insert();
        Response.Redirect("KullaniciListe.aspx");
    }
}