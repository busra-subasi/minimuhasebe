using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for user
/// </summary>
public class Users : DataBaseConfig
{
    public Users()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public int Id { get; set; }
    public string Fullname { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public DateTime Created_At { get; set; }
}


