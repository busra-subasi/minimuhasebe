﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="UrunListe.aspx.cs" Inherits="UrunYonetimi_UrunListe" %>

<%@ Import Namespace="System.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/default.aspx">Anasayfa</a></li>
        <li class="active">Ürünler</li>
    </ul>
    <div class="product-index">
        <h1>Ürünler<p class="pull-right"><a class="btn btn-success" href="UrunKayit.aspx">Yeni Ürün</a></p>
        </h1>
        <div id="w0" class="grid-view">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><a href="#">Ürün Id</a></th>
                        <th><a href="#">İsim</a></th>
                         <th><a href="#">Miktar</a></th>
                        <th><a href="#">Vergi Kuru</a></th>
                         <th><a href="#">Fiyat</a></th>
                        <th><a href="#">Kayıt Tarihi</a></th>
                        <th><a href="#">Tanım</a></th>
                        <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[id_product]" disabled="disabled">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[name]">
                        </td>
                        
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[Quantity]">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[tax_rate]">
                        </td>
                         <td>
                            <input type="text" class="form-control" name="ProductSearch[price]">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[Create_At]" disabled="disabled">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[Decription]" disabled="disabled">
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        Product oProduct = new Product();
                        DataTable dt = oProduct.SelectAll();
                    %>
                    <%for (int i = 0; i < dt.Rows.Count; i++)
                        {%>
                    <tr data-key="6">
                        <td><%=i+1 %></td>
                        <td><%=dt.Rows[i]["Id"].ToString() %></td>
                        <td><%=dt.Rows[i]["Name"].ToString() %></td>
                        <td><%=dt.Rows[i]["Quantity"].ToString() %></td>
                        <td><%=dt.Rows[i]["Tax_Rate"].ToString() %></td>
                         <td><%=dt.Rows[i]["Price"].ToString() %></td>
                        <td><%=dt.Rows[i]["Create_At"].ToString() %></td>
                        <td><%=dt.Rows[i]["Decription"].ToString() %></td>
                        <td>
                            <a href="UrunKayit.aspx?Id=<%=dt.Rows[i]["Id"].ToString() %>" title="Update">
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

