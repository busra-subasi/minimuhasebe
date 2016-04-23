<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriDetay.aspx.cs" Inherits="MusteriYonetimi_MusteriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="#">Home</a></li>
        <li><a href="#">Customers</a></li>
        <li class="active">7</li>
    </ul>
    <h1>Sanko Group 
        <p class="pull-right">
            <a class="btn btn-primary" href="">Update</a>
            <a class="btn btn-danger" href=""  data-method="post">Delete</a>
        </p>
    </h1>
    <table id="w0" class="table table-striped table-bordered detail-view">
        <tbody>
            <tr>
                <th>Id Customer</th>
                <td>7</td>
            </tr>
            <tr>
                <th>Firstname</th>
                <td>deneme</td>
            </tr>
            <tr>
                <th>Lastname</th>
                <td>deneme</td>
            </tr>
            <tr>
                <th>Company Name</th>
                <td>test</td>
            </tr>
            <tr>
                <th>Tax Number</th>
                <td>1231231</td>
            </tr>
            <tr>
                <th>Tax Office</th>
                <td>office</td>
            </tr>
            <tr>
                <th>Address</th>
                <td>adres</td>
            </tr>
            <tr>
                <th>Email</th>
                <td><a href="mailto:easd@asda.com">easd@asda.com</a></td>
            </tr>
            <tr>
                <th>Phone</th>
                <td>1231231231</td>
            </tr>
            <tr>
                <th>Create At</th>
                <td><span class="not-set">(not set)</span></td>
            </tr>
            <tr>
                <th>Update At</th>
                <td><span class="not-set">(not set)</span></td>
            </tr>
        </tbody>
    </table>
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

