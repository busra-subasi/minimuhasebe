using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary
/// Summary description for PaymentTransaction
/// </summary>
public class PaymentTransaction : DataBaseConfig
{
    public PaymentTransaction()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int Id { get; set; }
    public int Id_Customer { get; set; }
    public int Id_User_Create { get; set; }
    public int Payment_Type { get; set; }
    public decimal Amount { get; set; }
    public string Description { get; set; }
    public System.DateTime Create_At { get; set; }
}