using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Customer
/// </summary>
public class Customer:DataBaseConfig
{
    public Customer()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int      Id { get; set; }
    public string   Firstname { get; set; }
    public string   Lastname { get; set; }
    public string   Companyname { get; set; }
    public string   Address { get; set; }
    public string   Email { get; set; }
    public string   Phone { get; set; }
    public int      Tax_Number { get; set; }
    public string   Tax_Office { get; set; }
    public DateTime Create_At { get; set; }
    
}