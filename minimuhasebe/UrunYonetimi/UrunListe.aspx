<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="UrunListe.aspx.cs" Inherits="UrunYonetimi_UrunListe" %>

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
                        <th><a href="#" >Id Product</a></th>
                        <th><a href="#" >Name</a></th>
                        <th><a href="#" >Price</a></th>
                        <th><a href="#" >Tax Rate</a></th>
                        <th><a href="#" >Quantity</a></th>
                        <th><a href="#" >Create_At</a></th>
                        <th><a href="#" >Decription</a></th>
                        <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[id_product]">

                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[name]">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[price]">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[tax_rate]">
                        </td>
                         <td>
                            <input type="text" class="form-control" name="ProductSearch[Quantity]">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[Create_At]">
                        </td>
                        <td>
                            <input type="text" class="form-control" name="ProductSearch[Decription]">
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
                        <td><%=dt.Rows[i]["Price"].ToString() %></td>
                        <td><%=dt.Rows[i]["Tax_Rate"].ToString() %></td>
                        <td><%=dt.Rows[i]["Quantity"].ToString() %></td>
                        <td><%=dt.Rows[i]["Create_At"].ToString() %></td>
                        <td><%=dt.Rows[i]["Decription"].ToString() %></td>
                        <td>
                            <a href="#" title="Update">
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                            <a href="UrunListe.aspx?Id=<%=dt.Rows[i]["Id"].ToString() %>" title="Delete">
                                <span class="glyphicon glyphicon-trash"></span>
                            </a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </div>

</asp:Content>

