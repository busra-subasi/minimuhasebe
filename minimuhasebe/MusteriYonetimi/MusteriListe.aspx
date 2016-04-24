<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriListe.aspx.cs" Inherits="MusteriYonetimi_MusteriListe" %>

<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="#">Home</a></li>
        <li class="active">Customers</li>
    </ul>
    <div class="customer-index">
        <h1>Customers 
        <span class="pull-right"><a class="btn btn-success" href="MusteriKayit.aspx">Create Customer</a></span>
        </h1>
        <div id="w0" class="grid-view">
            <div class="summary">Showing <b>1-1</b> of <b>1</b> item.</div>
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><a href="#" data-sort="id_customer">Id Customer</a></th>
                        <th><a href="#" data-sort="companyname">Company Name</a></th>
                        <th><a href="#" data-sort="firstname">Firstname</a></th>
                        <th><a href="#" data-sort="lastname">Lastname</a></th>
                        <th><a href="#" data-sort="tax_number">Tax Number</a></th>
                        <th><a href="#" data-sort="tax_office">Tax Office</a></th>
                        <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[id_customer]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[companyname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[firstname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[lastname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[tax_number]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[tax_office]"></td>
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
                            <a href="#">
                                <span class="glyphicon glyphicon-eye-open"></span>
                            </a>
                            <a href="#" title="Update">
                                <span class="glyphicon glyphicon-pencil"></span>
                            </a>
                            <a href="#" title="Delete">
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

