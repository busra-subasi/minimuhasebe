using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary
/// Summary description for SalesInvoice
/// </summary
public class SalesInvoice
{
    public SalesInvoice()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public int Id { get; set; }
    public int Id_Customer { get; set; }
    public int Id_User_Create { get; set; }
    public decimal Total { get; set; }
    public string Tax_Office { get; set; }
    public decimal Tax_Total { get; set; }
    public decimal Grand_Total { get; set; }
    public int Tax_Number { get; set; }
    public string Description { get; set; }
    public System.DateTime Create_At { get; set; }

    

}