using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary
/// Summary description for SalesInvoiceItem
/// </summary
public class SalesInvoiceItem :DataBaseConfig
{
    public SalesInvoiceItem()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int Id { get; set; }
    public int Id_Sales_Invoice { get; set; }
    public int Id_Product { get; set; }
    public int Quantity { get; set; }
    public decimal Price { get; set; }
    public decimal Tax_Rate { get; set; }
   
}