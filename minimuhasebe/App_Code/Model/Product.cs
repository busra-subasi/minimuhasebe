using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product :DataBaseConfig
{
    public Product()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int Id { get; set; }
    public string Name { get; set; }
    public decimal Price { get; set; }
    public decimal Tax_Rate { get; set; }
    public System.DateTime Create_At { get; set; }
    public int Quantity { get; set; }
    public string Decription { get; set; }
}