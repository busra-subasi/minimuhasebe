<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FaturaYazdir.aspx.cs" Inherits="FinansYonetimi_FaturaYazdir" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body {
            font-size: 12px;
            font-family: Tahoma;
        }

        .invoice-title h2, .invoice-title h3 {
            display: inline-block;
        }

        .table > tbody > tr > .no-line {
            border-top: none;
        }

        .table > thead > tr > .no-line {
            border-bottom: none;
        }

        .table > tbody > tr > .thick-line {
            border-top: 2px solid;
        }
    </style>
</head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="row" style="margin-top: 50px;">
                        <div class="col-xs-6">
                            <img src="http://www.elaziganket.com/uploads/misas.jpg" style="height: 50px; width: 250px;">
                            <br>
                            <hr>
                            <% 
                                if (Request.QueryString["Id"] == "")
                                {
                                    Response.Redirect("FaturaListe.aspx");
                                }
                                decimal Total = 0;
                                decimal Tax_Total = 0;
                                decimal Grand_Total = 0;
                                DataBaseConfig db = new DataBaseConfig();

                                string sql = " Select p.*,c.Companyname As Companyname, c.Addres as Addres ,c.Phone as Phone ,c.Email as Email";
                                sql = sql + "  from   SalesInvoice p";
                                sql = sql + "  INNER  JOIN Customer c ON p.Id_Customer=c.Id ";
                                sql = sql + "  INNER  JOIN Users    u ON p.Id_User_Create=u.Id ";


                                db.oCommand = new SqlCommand(sql + " where  p.Id = " + Request.QueryString["Id"]);

                                SqlDataReader reader = db.ExecuteReader(db.oCommand);
                                if (reader.Read())
                                {
                                    Total = Convert.ToDecimal(reader["Total"]);
                                    Tax_Total = Convert.ToDecimal(reader["Tax_Total"]);
                                    Grand_Total = Convert.ToDecimal(reader["Grand_Total"]);

                                     %>
                            <p><strong>Fatura No : </strong><%=reader["Id"] %></p>
                            <address>
                                <strong>Tarih </strong>
                                <p><%=DateTime.Now %></p>
                            </address>
                            <address>
                                <strong>Vergi Bürosu:</strong> <span><%=reader["Tax_Office"] %> </span>
                                <br>
                                <strong>Vergi Numarası:</strong> <span><%=reader["Tax_Number"] %> </span>
                            </address>
                        </div>
                        <div class="col-xs-4 text-right pull-right">
                            <address>
                                <h3><%=reader["Companyname"] %></h3>
                                <strong>Adres</strong>
                                <p><%=reader["Addres"] %></p>
                                <strong>Telefon</strong>
                                <p><%=reader["Phone"] %></p>
                                <strong>Email</strong>
                                <p><%=reader["Email"] %></p>

                            </address>
                        </div>
                    </div>
                </div>
            </div>
            <%} %>
            <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><strong>Fatura Özeti</strong></h3>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-condensed" style="font-size: 12px;">
                                    <thead>
                                        <tr>
                                            <td><strong>#</strong></td>
                                            <td style="width:70%;"><strong>Ürün</strong></td>
                                             <td style="width:10%;"><strong>Miktar</strong></td>
                                            <td class="text-right" style="width:10%;"><strong>Fiyat</strong></td>
                                            <td class="text-right" style="width:10%;"><strong>Vergi Kuru</strong></td>
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <% 
                                            SalesInvoiceItem oSalesItem = new SalesInvoiceItem();
                                            string sqlItem = " Select s.*,prd.Name As Name";
                                            sqlItem = sqlItem + "  from   SalesInvoiceItem s";
                                            sqlItem = sqlItem + "  INNER  JOIN Product prd ON s.Id_Product=prd.Id ";
                                            sqlItem = sqlItem + " where  s.Id_Sales_Invoice = " + Request.QueryString["Id"];
                                            oSalesItem.oCommand = new SqlCommand(sqlItem);
                                            oSalesItem.oDataTable = oSalesItem.FillDataTable(oSalesItem.oCommand);

                                            for (int i = 0; i < oSalesItem.oDataTable.Rows.Count; i++)
                                            {
                                        %>
                                        <tr>
                                            <td><%=i+1 %></td>
                                            <td><%=oSalesItem.oDataTable.Rows[i]["Name"].ToString() %></td>
                                             <td  ><%=oSalesItem.oDataTable.Rows[i]["Quantity"].ToString() %></td>
                                            <td class="text-right"><%=oSalesItem.oDataTable.Rows[i]["Price"].ToString() %></td>
                                            <td class="text-right"><%=oSalesItem.oDataTable.Rows[i]["Tax_Rate"].ToString() %></td>
                                           
                                        </tr>
                                        <%}%>
                                    </tbody>
                                   
                                </table>
                                 <table style="float:right;">
                                        <tr>
                                            <td colspan="4"></td>
                                            <td colspan="1">
                                                <table class="table table-condensed" style="font-size: 12px;">
                                                    <thead>
                                                        <tr>
                                                            <td><strong>Sonuç</strong></td>
                                                            <td></td>
                                                        </tr>
                                                    </thead>
                                                    <tr>
                                                        <td>Toplam :</td>
                                                        <td class="text-right"><%=Total %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Toplam Vergi :</td>
                                                        <td class="text-right"><%=Tax_Total %></td>
                                                    </tr>
                                                    <tr>
                                                        <td>Genel Toplam :</td>
                                                        <td class="text-right"><%=Grand_Total %></td>
                                                    </tr>
                                                </table>

                                            </td>
                                        </tr>
                                    </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script language="JavaScript"> window.print();</script>
    </body>
</html>



