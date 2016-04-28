<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="FaturaDetay.aspx.cs" Inherits="FinansYonetimi_FaturaDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <ul class="breadcrumb">
            <li><a href="/web/index.php">Home</a></li>
            <li><a href="/web/index.php?r=salesinvoice%2Findex">Sales Invoices</a></li>
            <li class="active">191</li>
        </ul>
        <div class="sales-invoice-view">
            <h1>test       
                <p class="pull-right">
                    <a class="btn btn-default" href="/web/index.php?r=salesinvoice%2Fprint&amp;id=191">Print</a>            <a class="btn btn-success" href="/web/index.php?r=salesinvoice%2Fsend&amp;id=191">Send</a>
                    <a class="btn btn-primary" href="/web/index.php?r=salesinvoice%2Fupdate&amp;id=191">Update</a>            <a class="btn btn-danger" href="/web/index.php?r=salesinvoice%2Fdelete&amp;id=191" data-confirm="Are you sure you want to delete this item?" data-method="post">Delete</a>
                </p>
            </h1>
            <table id="w0" class="table table-striped table-bordered detail-view">
                <tbody>
                    <tr>
                        <th>Id Sales Invoice</th>
                        <td>191</td>
                    </tr>
                    <tr>
                        <th>Company Name</th>
                        <td>test</td>
                    </tr>
                    <tr>
                        <th>Total</th>
                        <td>3240.0000</td>
                    </tr>
                    <tr>
                        <th>Taxtotal</th>
                        <td>3011.7000</td>
                    </tr>
                    <tr>
                        <th>Grandtotal</th>
                        <td>6251.7000</td>
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
                        <th>Name</th>
                        <td>Print</td>
                    </tr>
                    <tr>
                        <th>Username</th>
                        <td>superadmin</td>
                    </tr>
                    <tr>
                        <th>Create At</th>
                        <td>2016-04-14 13:00:01</td>
                    </tr>
                    <tr>
                        <th>Send At</th>
                        <td><span class="not-set">(not set)</span></td>
                    </tr>
                    <tr>
                        <th>Description</th>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <h2>Sales Invoice Items</h2>
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th><span>Id Product</span></th>
                        <th><span>Product</span></th>
                        <th><span>Quantity</span></th>
                        <th><span>Price</span></th>
                        <th><span>Tax Rate</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>6</td>
                        <td>Product1</td>
                        <td>2</td>
                        <td>120.0000</td>
                        <td>0.0500</td>
                    </tr>
                    <tr>
                        <td>7</td>
                        <td>Bilgisayar</td>
                        <td>3</td>
                        <td>1000.0000</td>
                        <td>0.9999</td>
                    </tr>
                </tbody>
            </table>

        </div>
   
</asp:Content>

