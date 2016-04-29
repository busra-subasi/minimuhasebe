<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="FaturaDetay.aspx.cs" Inherits="FinansYonetimi_FaturaDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <ul class="breadcrumb">
            <li><a href="/web/index.php">Anasayfa</a></li>
            <li><a href="/web/index.php?r=salesinvoice%2Findex">Satış Faturaları</a></li>
            <li class="active">191</li>
        </ul>
        <div class="sales-invoice-view">
            <h1>test       
                <p class="pull-right">
                    <a class="btn btn-default" href="/web/index.php?r=salesinvoice%2Fprint&amp;id=191">Yazdır</a>            <a class="btn btn-success" href="/web/index.php?r=salesinvoice%2Fsend&amp;id=191">Gönder</a>
                    <a class="btn btn-primary" href="/web/index.php?r=salesinvoice%2Fupdate&amp;id=191">Düzenle</a>            <a class="btn btn-danger" href="/web/index.php?r=salesinvoice%2Fdelete&amp;id=191" data-confirm="Are you sure you want to delete this item?" data-method="post">Sil</a>
                </p>
            </h1>
            <table id="w0" class="table table-striped table-bordered detail-view">
                <tbody>
                    <tr>
                        <th>Satış Faturası Id</th>
                        <td>191</td>
                    </tr>
                    <tr>
                        <th>Şirket Adı</th>
                        <td>test</td>
                    </tr>
                    <tr>
                        <th>Toplam</th>
                        <td>3240.0000</td>
                    </tr>
                    <tr>
                        <th>Toplam Vergi</th>
                        <td>3011.7000</td>
                    </tr>
                    <tr>
                        <th>Genel Toplam</th>
                        <td>6251.7000</td>
                    </tr>
                    <tr>
                        <th>Vergi Numarası</th>
                        <td>1231231</td>
                    </tr>
                    <tr>
                        <th>Vergi Bürosu</th>
                        <td>office</td>
                    </tr>
                    <tr>
                        <th>Ad</th>
                        <td>Print</td>
                    </tr>
                    <tr>
                        <th> Soyad</th>
                        <td>superadmin</td>
                    </tr>
                    <tr>
                        <th>Kayıt Tarihi</th>
                        <td>2016-04-14 13:00:01</td>
                    </tr>
                    <tr>
                        <th>Gönderme</th>
                        <td><span class="not-set">(not set)</span></td>
                    </tr>
                    <tr>
                        <th>Tanım</th>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <h2>Satış Faturası Kalemleri</h2>
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th><span>Ürün Id</span></th>
                        <th><span>Ürün</span></th>
                        <th><span>Miktar</span></th>
                        <th><span>Fiyat</span></th>
                        <th><span>Vergi Kuru</span></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>6</td>
                        <td>Ürün1</td>
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

