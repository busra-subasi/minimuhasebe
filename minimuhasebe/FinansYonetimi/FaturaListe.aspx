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
                        <th><a href="#">Satış Faturası Id</a></th>
                        <th><a href="#">Şirket Adı</a></th>
                        <th><a href="#">Kullanıcı Adı</a></th>
                        <th><a href="#">Kayıt Tarihi</a></th>
                        <th><a href="#">Toplam</a></th>
                        <th><a href="#">Toplam Vergi</a></th>
                        <th><a href="#">Genel Toplam</a></th>
                        <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="SalesInvoiceSearch[id_sales_invoice]" disabled="disabled"></td>
                        <td>
                            <input type="text" class="form-control" name="SalesInvoiceSearch[companyName]"></td>
                        <td>
                            <input type="text" class="form-control" name="SalesInvoiceSearch[firstname]"></td>
                        </td>
                        <td>
                            <input type="text" class="form-control" name="SalesInvoiceSearch[create_at]"></td>
                        </td>
                        <td>
                            <input type="text"  class="form-control hasDatepicker" disabled="disabled">
                        </td>
                        <td>
                            <input type="text" class="form-control hasDatepicker" disabled="disabled">
                        </td>
                        <td>
                            <input type="text"  class="form-control hasDatepicker" disabled="disabled">
                        </td>
                       <td style="min-width:110px;">
                            <button type="submit" class="btn btn-primary">
                            <i class="glyphicon glyphicon-search"></i> 
                            </button>
                            &nbsp;<asp:LinkButton ID="btnrefresh" runat="server" class="btn btn-primary" OnClick="btnrefresh_Click" ><i class =" glyphicon glyphicon-zoom-out"></i></asp:LinkButton>
                        </td>

                    </tr>
                </thead>
                <tbody>
                    <% 
                        SalesInvoice oSales = new SalesInvoice();
                        string sql = " Select p.Id,p.Total as Total,p.Tax_Total as Tax_Total,p.Grand_Total,p.Create_At ,c.Companyname As Companyname,u.Fullname as Fullname ";
                        sql = sql + "  from   SalesInvoice p";
                        sql = sql + "  INNER  JOIN Customer c ON p.Id_Customer=c.Id ";
                        sql = sql + "  INNER  JOIN Users    u ON p.Id_User_Create=u.Id ";

                         if (Request.RequestType == "POST")
                        {
                            sql = sql + " where 1=1 ";
                            if (Request.Form["ProductSearch[companyname]"] != "")
                            {
                                sql = sql + " And c.Companyname Like '%" + Request.Form["ProductSearch[companyname]"] + "%'";
                            }
                            if (Request.Form["ProductSearch[firstname]"] != "")
                            {
                                sql = sql + " And u.Fullname Like '%" + Request.Form["ProductSearch[firstname]"] + "%'";
                            }
                            if (Request.Form["ProductSearch[create_at]"] != "")
                            {
                                sql = sql + " And p.Create_At Like '%" + Request.Form["ProductSearch[create_at]"] + "%'";
                            }
                        }
                         oSales.oCommand = new SqlCommand(sql);
                         oSales.oDataTable = oSales.FillDataTable(oSales.oCommand);

                        for (int i = 0; i < oSales.oDataTable.Rows.Count; i++)
                        {
                    %>
                    <tr>
                        <td><%=i+1 %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Id"].ToString() %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Companyname"].ToString() %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Fullname"].ToString() %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Create_At"].ToString() %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Total"].ToString() %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Tax_Total"].ToString() %></td>
                        <td><%=oSales.oDataTable.Rows[i]["Grand_Total"].ToString() %></td>

                        <td>
                            <a href="FaturaDetay.aspx?Id=<%=oSales.oDataTable.Rows[i]["Id"].ToString() %>" title="Update">
                                <span class="glyphicon glyphicon-eye-open"></span>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

