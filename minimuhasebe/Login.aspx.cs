using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        DataBaseConfig db = new DataBaseConfig();
        db.oCommand = new SqlCommand("Select * From Users Where Email= @Email and Password = @Password");
        db.oCommand.Parameters.AddWithValue("@Email", Email.Text);
        db.oCommand.Parameters.AddWithValue("@Password", Password.Text);
        db.oDataReader = db.ExecuteReader(db.oCommand);
        if (db.oDataReader.Read() && Convert.ToInt32(db.oDataReader["Id"]) > 0)
        {
            Session["Id"] = db.oDataReader["Id"].ToString();
            //Session["Fullname"] = db.oDataReader["Fullname"].ToString();
            Response.Redirect("Default.aspx");
        }
        else
        {
            lblResult.Text = "Lütfen Bilgilerinizi Konrol Ediniz !!";
        }
    }
}