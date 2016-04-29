<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="KullaniciListe.aspx.cs" Inherits="KullaniciYonetimi_KullaniciListe" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <ul class="breadcrumb">
        <li><a href="/default.aspx">Anasayfa</a></li>
        <li class="active">Kullanıclar</li>
    </ul>
    <div class="product-index">
        <h1>Kullanıclar<p class="pull-right"><a class="btn btn-success" href="KullaniciKayit.aspx">Yeni Kullanıcı</a></p>
        </h1>
        <div id="w0" class="grid-view">
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><a href="#" >Kullanıcı Id</a></th>
                        <th><a href="#" >Ad Soyad</a></th>
                        <th><a href="#" >Email</a></th>
                        <th><a href="#" >Şifre</a></th>
                        <th><a href="#" >Kayıt Tarihi</a></th>
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
                        <td>&nbsp;</td>
                    </tr>
                </thead>
                <tbody>
                    <% 
                        Users oUsers = new Users();
                        DataTable dt = oUsers.SelectAll();
                    %>
                    <%for (int i = 0; i < dt.Rows.Count; i++)
                        {%>
                    <tr data-key="6">
                        <td><%=i+1 %></td>
                        <td><%=dt.Rows[i]["Id"].ToString() %></td>
                        <td><%=dt.Rows[i]["Fullname "].ToString() %></td>
                        <td><%=dt.Rows[i]["Email"].ToString() %></td>
                        <td><%=dt.Rows[i]["Password"].ToString() %></td>
                        <td><%=dt.Rows[i]["Created_At"].ToString() %></td>
                        <td>
                            <a href="#" title="Update">
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

