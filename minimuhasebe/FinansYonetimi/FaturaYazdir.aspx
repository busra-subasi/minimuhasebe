<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FaturaYazdir.aspx.cs" Inherits="FinansYonetimi_FaturaYazdir" %>


<html>
<head>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        body{ font-size: 12px; font-family: Tahoma}
        .invoice-title h2, .invoice-title h3 {
            display: inline-block;
        }

        .table > tbody > tr > .no-line {
            border-top: none;
        }

        .table > thead > tr > .no-line {
            border-bottom: none;
        }

        .table > tbody > tr > .thick-line {
            border-top: 2px solid;
        }</style>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-xs-12">
            <div class="row" style="margin-top:50px;">
                <div class="col-xs-6">
                    <img src="" style="height:50px;width:250px;">
                    <br>
                    <hr>
                    <p> <strong>Invoice No:</strong>191</p> 
                    <address>
                         

                                                                                  <strong>Print Date:</strong>
                                <p>2016-04-28 22:17:58</p>
                                                                       </address>
                    <address>
                        <strong>Tax Office:</strong> <span>office </span>
                        <br>
                        <strong>Tax Number:</strong> <span>1231231 </span>
                    </address>
                </div>
                <div class="col-xs-4 text-right pull-right">
                    <address>
                        <h3>test</h3>
                            <strong>Address</strong>
                            <p>adres</p>
                            <strong>Phone</strong>
                            <p>1231231231</p>
                            <strong>Email</strong>
                            <p>easd@asda.com</p>
                            
                    </address>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><strong>Invoice summary</strong></h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed" style="font-size:12px;">
                            <thead>
                            <tr>
                                <td><strong>Item</strong></td>
                                <td class="text-center"><strong>Price</strong></td>
                                <td class="text-center"><strong>Tax Rate</strong></td>
                                <td class="text-center"><strong>Quantity</strong></td>
                                <td class="text-right"><strong>Totals</strong></td>
                            </tr>
                            </thead>
                            <tbody>
                                                            <tr>
                                    <td>Product1</td>
                                    <td class="text-center">120.0000</td>
                                    <td class="text-center">0.0500</td>
                                    <td class="text-center">2</td>
                                    <td class="text-right">240</td>
                                </tr>
                                                            <tr>
                                    <td>Bilgisayar</td>
                                    <td class="text-center">1000.0000</td>
                                    <td class="text-center">0.9999</td>
                                    <td class="text-center">3</td>
                                    <td class="text-right">3000</td>
                                </tr>
                                                        </tbody>
                            <tfoot>
                            <tr>
                                <td colspan="4"></td>
                                <td colspan="1">
                                    <table class="table table-condensed" style="font-size:12px;">
                                        <thead>
                                        <tr>
                                            <td><strong>Result</strong></td>
                                            <td></td>
                                        </tr>
                                        </thead>
                                        <tr>
                                            <td>Total :</td>
                                            <td class="text-right">3240.0000</td>
                                        </tr>
                                        <tr>
                                            <td>Tax Total :</td>
                                            <td class="text-right">3011.7000</td>
                                        </tr>
                                        <tr>
                                            <td>Grand Total :</td>
                                            <td class="text-right">6251.7000</td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                            </tfoot>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script LANGUAGE="JavaScript">  window.print();</script>
</body>
</html>



