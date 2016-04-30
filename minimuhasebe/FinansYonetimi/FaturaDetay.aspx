<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="FaturaDetay.aspx.cs" Inherits="FinansYonetimi_FaturaDetay" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <ul class="breadcrumb">
        <li><a href="/Default.aspx">Anasayfa</a></li>
        <li><a href="FaturaListe.aspx">Satış Faturaları</a></li>
        <li class="active">Fatura Detay</li>
    </ul>
    <div class="sales-invoice-view">
        <% 
            DataBaseConfig db = new DataBaseConfig();

            string sql = " Select p.*,c.Companyname As Companyname, u.Fullname as Fullname ";
            sql = sql + "  from   SalesInvoice p";
            sql = sql + "  INNER  JOIN Customer c ON p.Id_Customer=c.Id ";
            sql = sql + "  INNER  JOIN Users    u ON p.Id_User_Create=u.Id ";


            db.oCommand = new SqlCommand(sql + " where  p.Id = " + Request.QueryString["Id"]);

            SqlDataReader reader = db.ExecuteReader(db.oCommand);
            if (reader.Read())
            {  %>
        <h1><%=reader["Companyname"] %>
            <p class="pull-right">
                <a class="btn btn-primary" href="FaturaYazdir.aspx?Id=<%=reader["Id"] %>">Yazdır</a>
            </p>
        </h1>

        <table id="w0" class="table table-striped table-bordered detail-view">
            <tbody>
                <tr>
                    <th>Satış Faturası Id</th>
                    <td><%=reader["Id"] %></td>
                </tr>
                <tr>
                    <th>Şirket Adı</th>
                    <td><%=reader["Companyname"] %></td>
                </tr>
                <tr>
                    <th>Toplam</th>
                    <td><%=reader["Total"] %></td>
                </tr>
                <tr>
                    <th>Toplam Vergi</th>
                    <td><%=reader["Tax_Total"] %></td>
                </tr>
                <tr>
                    <th>Genel Toplam</th>
                    <td><%=reader["Grand_Total"] %></td>
                </tr>
                <tr>
                    <th>Vergi Numarası</th>
                    <td><%=reader["Tax_Number"] %></td>
                </tr>
                <tr>
                    <th>Vergi Bürosu</th>
                    <td><%=reader["Tax_Office"] %></td>
                </tr>

                <tr>
                    <th>İşlemi Kapan Kullancı</th>
                    <td><%=reader["Fullname"] %></td>
                </tr>
                <tr>
                    <th>Kayıt Tarihi</th>
                    <td><%=reader["Create_At"] %></td>
                </tr>

                <tr>
                    <th>Açıklama</th>
                    <td><%=reader["Description"] %></td>
                </tr>
            </tbody>
        </table>
        <%} %>
        <h2>Satış Faturası Kalemleri</h2>
        <table class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th><span>#</span></th>
                    <th><span>Fatura Kalemi Id</span></th>
                    <th><span>Ürün</span></th>
                    <th><span>Miktar</span></th>
                    <th><span>Fiyat</span></th>
                    <th><span>Vergi Kuru</span></th>
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
                    <td><%=oSalesItem.oDataTable.Rows[i]["Id"].ToString() %></td>
                    <td><%=oSalesItem.oDataTable.Rows[i]["Name"].ToString() %></td>
                    <td><%=oSalesItem.oDataTable.Rows[i]["Quantity"].ToString() %></td>
                    <td><%=oSalesItem.oDataTable.Rows[i]["Price"].ToString() %></td>
                    <td><%=oSalesItem.oDataTable.Rows[i]["Tax_Rate"].ToString() %></td>
                </tr>
                <%}%>
            </tbody>
        </table>

    </div>

</asp:Content>

