<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriDetay.aspx.cs" Inherits="MusteriYonetimi_MusteriDetay" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <% 
        DataBaseConfig db = new DataBaseConfig();
        db.oCommand = new SqlCommand("Select * from Customer where Id = " + Request.QueryString["Id"]);

        SqlDataReader reader = db.ExecuteReader(db.oCommand);
        if (reader.Read())
        {  %>
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">AnaSayfa</a></li>
        <li><a href="MusteriListe.aspx">Müşteriler</a></li>
        <li class="active"><%=reader["Id"] %></li>
    </ul>

    <h1><%=reader["Companyname"] %> </h1>
    <table id="w0" class="table table-striped table-bordered detail-view">
        <tbody>
            <tr>
                <th>Müşteri Id</th>
                <td><%=reader["Id"] %></td>
            </tr>
            <tr>
                <th>Ad</th>
                <td><%=reader["Firstname"] %></td>
            </tr>
            <tr>
                <th>Soyad</th>
                <td>deneme</td>
            </tr>
            <tr>
                <th>Şirket Adı</th>
                <td><%=reader["Companyname"] %></td>
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
                <th>Adres</th>
                <td><%=reader["Addres"] %></td>
            </tr>
            <tr>
                <th>E-mail</th>
                <td><a href="<%=reader["Email"] %>"><%=reader["Email"] %></a></td>
            </tr>
            <tr>
                <th>Tel.No</th>
                <td><%=reader["Phone"] %></td>
            </tr>
            <tr>
                <th>Kayıt Tarihi</th>
                <td><span class="not-set"><%=reader["Create_At"] %></span></td>
            </tr>
        </tbody>
    </table>
    <% reader.Close();
        } %>
    <h1>Ödeme Geçmişi </h1>
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th><a>Ödeme Id</a></th>
                <th><a>Ödeme Tipi</a></th>
                <th><a>Kullanıcı Adı</a></th>
                <th><a data-sort="description">Tanım</a></th>
                <th><a>Kayıt Tarihi</a></th>
                <th><a data-sort="amount">Tutar</a></th>
            </tr>
        </thead>
        <tbody>
            <%  PaymentTransaction dbPayment = new PaymentTransaction();
                dbPayment.oCommand = new SqlCommand("Select *,u.Fullname as name from PaymentTransaction p INNER JOIN Users u ON p.Id_User_Create=u.Id  where p.Id_Customer = " + Request.QueryString["Id"]);
                dbPayment.oDataTable = dbPayment.FillDataTable(dbPayment.oCommand);
                decimal TotalPaid = 0;
                decimal TotalDept = 0;
                for (int i = 0; i < dbPayment.oDataTable.Rows.Count; i++)
                {

            %>

            <tr>
                <td><%=i+1 %></td>
                <td><%=dbPayment.oDataTable.Rows[i]["Id"].ToString() %></td>
                <td class="text-center"><% if (dbPayment.oDataTable.Rows[i]["Payment_Type"].ToString() == "1")
                                            {
                                                TotalPaid = TotalPaid + Convert.ToDecimal(dbPayment.oDataTable.Rows[i]["Amount"].ToString());
                                                Response.Write("<p class='glyphicon glyphicon-remove-sign text-success text-center'></p>");
                                            }
                                            else
                                            {
                                                Response.Write("<p class='glyphicon glyphicon-ok-sign text-danger text-center'></p>");
                                                TotalDept = TotalDept + Convert.ToDecimal(dbPayment.oDataTable.Rows[i]["Amount"].ToString());
                                            }
                %></td>
                <td><%= dbPayment.oDataTable.Rows[i]["name"].ToString() %></td>
                <td><%= dbPayment.oDataTable.Rows[i]["Description"].ToString() %></td>
                <td><%= dbPayment.oDataTable.Rows[i]["Create_At"].ToString() %></td>
                <td><%= dbPayment.oDataTable.Rows[i]["Amount"].ToString() %></td>
            </tr>
            <% } %>
        </tbody>
    </table>

    <table class="pull-right" style="font-size: 15px;">
        <tbody>
            <tr>
                <td>Toplam Borç </td>
                <td>:</td>
                <td class="bg-danger"><%=TotalDept %> </td>
            </tr>
            <tr>
                <td>Toplam Ödeme</td>
                <td>:</td>
                <td class="bg-info"><%=TotalPaid %> </td>
            </tr>
            <tr>
                <td>Genel toplam</td>
                <td>:</td>
                <td class="bg-success"><%=TotalDept -TotalPaid%> </td>
            </tr>
        </tbody>
    </table>
</asp:Content>

