<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="FaturaListe.aspx.cs" Inherits="FinansYonetimi_FaturaListe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <%@ Import Namespace="System.Data" %>
    <%@ Import Namespace="System.Data.SqlClient" %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">Anasayfa</a></li>
        <li class="active">Satış Faturaları</li>
    </ul>
    <div class="sales-invoice-index">
        <h1>Satış Faturaları  
            <p class="pull-right">
                <a class="btn btn-success" href="/FinansYonetimi/FaturaKayit.aspx">Yeni Fatura</a>
                <a class="btn btn-success" href="/FinansYonetimi/YeniOdeme.aspx">Yeni Ödeme</a>

            </p>
        </h1>
        <div id="w0" class="grid-view">

            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=id_sales_invoice" data-sort="id_sales_invoice">Satış Faturası Id</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=companyName" data-sort="companyName">Şirket Adı</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=status" data-sort="status">Statü</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=userName" data-sort="userName">Kullanıcı Adı</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=create_at" data-sort="create_at">Kayıt Tarihi</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=total" data-sort="total">Toplam</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=taxtotal" data-sort="taxtotal">Toplam Vergi</a></th>
                        <th><a href="/web/index.php?r=salesinvoice%2Findex&amp;sort=grandtotal" data-sort="grandtotal">Genel Toplam</a></th>
                        <th class="action-column">&nbsp;</th>
                         <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="SalesInvoiceSearch[id_sales_invoice]"></td>
                        <td>
                            <input type="text" class="form-control" name="SalesInvoiceSearch[companyName]"></td>
                        <td>
                            <select class="form-control" name="SalesInvoiceSearch[status]">
                                <option value=""></option>
                                <option value="1">Profor</option>
                                <option value="2">Confirm</option>
                                <option value="3">Print</option>
                                <option value="4">Send</option>
                            </select></td>
                        <td>
                            <select class="form-control" name="SalesInvoiceSearch[userName]">
                                <option value=""></option>
                                <option value="1">superadmin</option>
                            </select></td>
                        <td>
                            <input type="text" id="salesinvoicesearch-create_at" class="form-control hasDatepicker" name="SalesInvoiceSearch[create_at]">
                        </td>
                        <td>
                            <input type="text" id="salesinvoicesearch-send_at" class="form-control hasDatepicker" name="SalesInvoiceSearch[send_at]">
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </thead>
                <tbody>
                    <% 
//SalesInvoice oSales = new SalesInvoice();
//string sql = " Select *,u.Fullname as name";
//sql = sql + "  from PaymentTransaction p";
//sql = sql + "  INNER  JOIN Customer c ON p.Id_Customer=c.Id ";
//sql = sql + "  INNER  JOIN Users u ON p.Id_User_Create=u.Id ";
//oSales.oCommand = new SqlCommand(sql);
//oSales.oDataTable = oSales.FillDataTable(oSales.oCommand);

//for (int i = 0; i < oSales.oDataTable.Rows.Count; i++)
//{
                    %>
                   <%-- <tr data-key="6">
                        <td><%//i+1 %></td>
                        <td><%//oSales.oDataTable.Rows[i]["Id"].ToString() %></td>
                        <td><% //oSales.oDataTable.Rows[i]["Companyname "].ToString() %></td>
                        <td><%//oSales.oDataTable.Rows[i]["Id_User_Create"].ToString() %></td>
                        <td><%//=oSales.oDataTable.Rows[i]["Total"].ToString() %></td>
                        <td><%//oSales.oDataTable.Rows[i]["Created_At"].ToString() %></td>
                        <td>
                            <a href="#" title="Update">
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                        </td>--%>
                    </tr>
                    <%//}%>
                    <tr data-key="190">
                        <td>1</td>
                        <td>190</td>
                        <td>test</td>
                        <td>Print</td>
                        <td>superadmin</td>
                        <td>2016-04-15 08:31:45</td>
                        <td><span class="not-set">(not set)</span></td>
                        <td>1200.0000</td>
                        <td>60.0000</td>
                        <td>1260.0000</td>
                        <td><a href="/web/index.php?r=salesinvoice%2Fview&amp;id=190" title="Göster" aria-label="View" data-pjax="0"><span class="glyphicon glyphicon-eye-open"></span></a><a href="/web/index.php?r=salesinvoice%2Fupdate&amp;id=190" title="Düzenle" aria-label="Update" data-pjax="0"><span class="glyphicon glyphicon-pencil"></span></a><a href="/web/index.php?r=salesinvoice%2Fdelete&amp;id=190" title="Sil" aria-label="Delete" data-confirm="Are you sure you want to delete this item?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                    <tr data-key="191">
                        <td>2</td>
                        <td>191</td>
                        <td>test</td>
                        <td>Print</td>
                        <td>superadmin</td>
                        <td>2016-04-14 13:00:01</td>
                        <td><span class="not-set">(not set)</span></td>
                        <td>3240.0000</td>
                        <td>3011.7000</td>
                        <td>6251.7000</td>
                        <td><a href="/web/index.php?r=salesinvoice%2Fview&amp;id=191" title="Göster" aria-label="View" data-pjax="0"><span class="glyphicon glyphicon-eye-open"></span></a><a href="/web/index.php?r=salesinvoice%2Fupdate&amp;id=191" title="Düzenle" aria-label="Update" data-pjax="0"><span class="glyphicon glyphicon-pencil"></span></a><a href="/web/index.php?r=salesinvoice%2Fdelete&amp;id=191" title="Sil" aria-label="Delete" data-confirm="Are you sure you want to delete this item?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                    <tr data-key="192">
                        <td>3</td>
                        <td>192</td>
                        <td>test</td>
                        <td>Print</td>
                        <td>superadmin</td>
                        <td>2016-04-28 14:47:37</td>
                        <td><span class="not-set">(not set)</span></td>
                        <td>3240.0000</td>
                        <td>3011.7000</td>
                        <td>6251.7000</td>
                        <td><a href="/web/index.php?r=salesinvoice%2Fview&amp;id=192" title="Göster" aria-label="View" data-pjax="0"><span class="glyphicon glyphicon-eye-open"></span></a><a href="/web/index.php?r=salesinvoice%2Fupdate&amp;id=192" title="Düzenle" aria-label="Update" data-pjax="0"><span class="glyphicon glyphicon-pencil"></span></a><a href="/web/index.php?r=salesinvoice%2Fdelete&amp;id=192" title="Sil" aria-label="Delete" data-confirm="Are you sure you want to delete this item?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

