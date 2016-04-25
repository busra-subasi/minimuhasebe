﻿<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriDetay.aspx.cs" Inherits="MusteriYonetimi_MusteriDetay" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <% Customer oCustomer = new Customer();
        DataBaseConfig db = new DataBaseConfig();
        db.oCommand = new SqlCommand("Select * from Customer where Id = "+Request.QueryString["Id"]);

        SqlDataReader reader = db.ExecuteReader(db.oCommand);
        if (reader.Read()) { 

         %>
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">AnaSayfa</a></li>
        <li><a href="MusteriListe.aspx">Müşteriler</a></li>
        <li class="active"><%=reader["Id"] %></li>
    </ul>
    
    <h1><%=reader["Companyname"] %> </h1>
    <table id="w0" class="table table-striped table-bordered detail-view">
        <tbody>
            <tr>
                <th>Id Customer</th>
                <td><%=reader["Id"] %></td>
            </tr>
            <tr>
                <th>Firstname</th>
                <td><%=reader["Firstname"] %></td>
            </tr>
            <tr>
                <th>Lastname</th>
                <td>deneme</td>
            </tr>
            <tr>
                <th>Company Name</th>
                <td><%=reader["Companyname"] %></td>
            </tr>
            <tr>
                <th>Tax Number</th>
                <td><%=reader["Tax_Number"] %></td>
            </tr>
            <tr>
                <th>Tax Office</th>
                <td><%=reader["Tax_Office"] %></td>
            </tr>
            <tr>
                <th>Addres</th>
                <td><%=reader["Addres"] %></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><a href="<%=reader["Email"] %>"><%=reader["Email"] %></a></td>
            </tr>
            <tr>
                <th>Phone</th>
                <td><%=reader["Phone"] %></td>
            </tr>
            <tr>
                <th>Create At</th>
                <td><span class="not-set"><%=reader["Create_At"] %></span></td>
            </tr>
        </tbody>
    </table>
    <%} %>
    <h1 class="text-primary">test        
        <span style="font-size: 20px; color: #000000">Payment Transactions</span>
    </h1>
    <table class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>#</th>
                <th><a>User Name</a></th>
                <th><a>Payment Type</a></th>
                <th><a>Period Name</a></th>
                <th><a ">Create At</a></th>
                <th><a data-sort="description">Description</a></th>
                <th><a data-sort="amount">Amount</a></th>
            </tr>
        </thead>
        <tbody>
            <tr data-key="35">
                <td>1</td>
                <td>superadmin</td>
                <td class="text-center">
                    <p class="glyphicon glyphicon-remove-sign text-danger text-center"></p>
                </td>
                <td>2005</td>
                <td>2016-04-14 16:51:07</td>
                <td>Sales Invoice  =190</td>
                <td>1260.0000</td>
            </tr>
            <tr data-key="36">
                <td>2</td>
                <td>superadmin</td>
                <td class="text-center">
                    <p class="glyphicon glyphicon-remove-sign text-danger text-center"></p>
                </td>
                <td>2005</td>
                <td>2016-04-14 16:59:49</td>
                <td>Sales Invoice  =191</td>
                <td>6251.7000</td>
            </tr>
            <tr data-key="37">
                <td>3</td>
                <td>superadmin</td>
                <td class="text-center">
                    <p class="glyphicon glyphicon-ok-sign text-success text-center"></p>
                </td>
                <td>2016</td>
                <td>2016-04-14 17:16:19</td>
                <td></td>
                <td>200.0000</td>
            </tr>
        </tbody>
    </table>

    <table class="pull-right" style="font-size: 15px;">
        <tbody><tr>
            <td>Total Dept </td>
            <td>:</td>
            <td class="bg-danger">-7511.7</td>
        </tr>
        <tr>
            <td>Total Pay</td>
            <td>:</td>
            <td class="bg-info">200 </td>
        </tr>
        <tr>
            <td>Grand Total</td>
            <td>:</td>
            <td class="bg-success">-7311.7 </td>
        </tr>
    </tbody></table>
</asp:Content>

