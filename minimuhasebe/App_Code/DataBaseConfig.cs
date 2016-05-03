using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataBaseConfig
/// </summary>
public class DataBaseConfig
{
    #region DatabaseProperty
    //public SqlConnection oConnection = new SqlConnection(@"Data Source='MYDataBaseIP';Initial Catalog='DBname';User Id='username';Password='password';");
    public SqlConnection oConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\muratcelikVM\Documents\GitHub\minimuhasebe\minimuhasebe\App_Data\minimuhasebeDB.mdf;Integrated Security=True");

    public SqlDataAdapter oDataAdapter;
    public SqlCommand oCommand;
    public DataTable oDataTable;
    public SqlDataReader oDataReader;
    #endregion

    #region DatabaseFunction
    public bool DbOpen()
    {
        if (oConnection.State != ConnectionState.Open)
        {
            oConnection.Open();
            return true;
        }
        else
        {
            return false;
        }
    }
    public bool DbClose()
    {
        if (oConnection.State == ConnectionState.Open)
        {
            oConnection.Close();
            return true;
        }
        else { return false; }
    }
    public bool ExecuteCommand(SqlCommand oCommand)
    {
        DbOpen();
        oCommand.Connection = this.oConnection;
        oCommand.ExecuteNonQuery();
        DbClose();
        return true;

    }
    public object ExecuteScaler(SqlCommand oCommand)
    {
        object Result = null;
        DbOpen();
        oCommand.Connection = this.oConnection;
        Result = oCommand.ExecuteScalar();
        DbClose();
        return Result;
    }
    public SqlDataReader ExecuteReader(SqlCommand oCommand)
    {
        DbOpen();
        oCommand.Connection = this.oConnection;
        oDataReader = oCommand.ExecuteReader();
        return oDataReader;
    }
    public DataTable FillDataTable(SqlCommand oCommand)
    {
        DbOpen();
        this.oDataTable = new DataTable();
        oCommand.Connection = this.oConnection;
        oDataAdapter = new SqlDataAdapter(oCommand);
        oDataAdapter.Fill(this.oDataTable);
        DbClose();
        return oDataTable;

    }
    #endregion

    #region CRUDFunction
    public object Insert(bool returnId = false)
    {
        var PropertyList = this.GetType().GetProperties();
        string InsertText = "INSERT INTO [TABLENAME] ([COLUMNS]) VALUES ([VALUES])";

        string Columns = string.Empty;
        string Values = string.Empty;
        string TableName = this.GetType().Name;
        oCommand = new SqlCommand();


        foreach (var Property in PropertyList)
        {
            if (!Property.Name.Equals("Id") && Property.GetValue(this, null) != null && Property.GetValue(this, null).ToString() != "1.1.0001 00:00:00")
            {
                Columns = Columns + Property.Name + ",";
                Values = Values + "@" + Property.Name + ",";
                oCommand.Parameters.AddWithValue("@" + Property.Name, Property.GetValue(this, null));
            }

        }
        if (Columns.IndexOf(',') > -1) { Columns = Columns.Substring(0, Columns.Length - 1); }
        if (Values.IndexOf(',') > -1) { Values = Values.Substring(0, Values.Length - 1); }

        InsertText = InsertText.Replace("[TABLENAME]", TableName);
        InsertText = InsertText.Replace("[COLUMNS]", Columns);
        InsertText = InsertText.Replace("[VALUES]", Values);
        oCommand.CommandText = InsertText;
        if (returnId) {
            return this.ExecuteScaler(oCommand);
        }
        if (this.ExecuteCommand(oCommand)) {
            return 1;
        }
        return 0; 
    }
    public bool Update()
    {
        var PropList = this.GetType().GetProperties();
        if (Convert.ToInt64(PropList[0].GetValue(this, null)) == 0)
        {
            return false;
        }
        else
        {
            string UpdateText = "UPDATE [TABLENAME] SET [COLUMNSVALUES] WHERE " + PropList[0].Name + "=" + PropList[0].GetValue(this, null);
            string ColumnsValues = string.Empty;
            string TableName = this.GetType().Name;
            oCommand = new SqlCommand();
            foreach (var Property in PropList)
            {
                if (!Property.Name.Equals("Id"))
                {
                    ColumnsValues += Property.Name + "=@" + Property.Name + ",";
                    oCommand.Parameters.AddWithValue("@" + Property.Name, Property.GetValue(this, null));
                }

            }
            if (ColumnsValues.IndexOf(',') > -1) { ColumnsValues = ColumnsValues.Substring(0, ColumnsValues.Length - 1); }

            UpdateText = UpdateText.Replace("[TABLENAME]", TableName);
            UpdateText = UpdateText.Replace("[COLUMNSVALUES]", ColumnsValues);
            oCommand.CommandText = UpdateText;

            return this.ExecuteCommand(oCommand);

        }

    }
    public bool Delete()
    {
        var PropList = this.GetType().GetProperties();
        string DeleteText = "DELETE FROM " + this.GetType().Name + " WHERE Id=" + PropList[0].GetValue(this, null);
        return this.ExecuteCommand(new SqlCommand { CommandText = DeleteText });
    }

    public DataTable SelectById()
    {
        var PropertyList = this.GetType().GetProperties();
        oCommand = new SqlCommand("Select * From" + this.GetType().Name + " where Id=" + PropertyList[0].GetValue(this, null));
        return this.FillDataTable(oCommand);
    }
    public DataTable SelectAll()
    {
        oCommand = new SqlCommand("Select * from " + this.GetType().Name);
        return this.FillDataTable(oCommand);
    }
    public DataTable SelectAllFilterByColoumn(object Coloumn, object Value)
    {
        oCommand = new SqlCommand("Select * from " + this.GetType().Name + " where " + Coloumn + "=@" + Coloumn);
        oCommand.Parameters.AddWithValue("@" + Coloumn, Value);
        return this.FillDataTable(oCommand);
    }
    #endregion


}