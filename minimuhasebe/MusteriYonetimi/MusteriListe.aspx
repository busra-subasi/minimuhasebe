<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriListe.aspx.cs" Inherits="MusteriYonetimi_MusteriListe" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">Anasayfa</a></li>
        <li class="active">Müşteriler</li>
    </ul>
    <div class="customer-index">
        <h1>Müşteriler 
        <span class="pull-right"><a class="btn btn-success" href="MusteriKayit.aspx">Müşteri Kayıt</a></span>
        </h1>
        <div id="w0" class="grid-view">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><a href="#" data-sort="id_customer">Müşteri Id</a></th>
                        <th><a href="#" data-sort="companyname">Şirket Adı</a></th>
                        <th><a href="#" data-sort="firstname">Ad</a></th>
                        <th><a href="#" data-sort="lastname">Soyad</a></th>
                        <th><a href="#" data-sort="tax_number">Vergi Numarası</a></th>
                        <th><a href="#" data-sort="tax_office">Vergi Bürosu</a></th>
                        <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[id_customer]"  disabled="disabled"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[companyname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[firstname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[lastname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[tax_number]"  disabled="disabled"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[tax_office]"  disabled="disabled"></td>
                        <td>&nbsp;</td>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        Customer oCustomer = new Customer();
                        DataTable dt = oCustomer.SelectAll();
                    %>
                    <%for (int i = 0; i < dt.Rows.Count; i++)
                        {%>

                    <tr data-key="<%=dt.Rows[i]["Id"].ToString() %>">
                        <td><%=i+1 %></td>
                        <td><%=dt.Rows[i]["Id"].ToString() %></td>
                        <td><%=dt.Rows[i]["Companyname"].ToString() %></td>
                        <td><%=dt.Rows[i]["Firstname"].ToString() %></td>
                        <td><%=dt.Rows[i]["Lastname"].ToString() %></td>
                        <td><%=dt.Rows[i]["Tax_Number"].ToString() %></td>
                        <td><%=dt.Rows[i]["Tax_Office"].ToString() %></td>
                        <td>
                            <a href="MusteriDetay.aspx?Id=<%=dt.Rows[i]["Id"].ToString() %>" title="Göster">
                                <span class="glyphicon glyphicon-eye-open"></span>
                            </a>
                            <a href="MusteriKayit.aspx?Id=<%=dt.Rows[i]["Id"].ToString() %>" title="Düzenle">
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

