<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="UrunKayit.aspx.cs" Inherits="UrunYonetimi_UrunKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/default.aspx">Anasayfa</a></li>
        <li><a href="UrunListe.aspx">Ürünler</a></li>
        <li class="active">Yeni Ürün </li>
    </ul>
    <div class="product-create">
        <h1>Yeni Ürün</h1>
        <div class="product-form">

            <div class="form-group field-product-name required">
                <label class="control-label" for="product-name">İsim</label>
                <asp:TextBox ID="Name" runat="server" class="form-control" MaxLength="50"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group field-product-Quantity required">
                <label class="control-label" for="product-price">Miktar</label>

                <asp:TextBox ID="Quantity" runat="server" class="form-control"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group field-product-price required">
                <label class="control-label" for="product-price">Fiyat</label>

                <asp:TextBox ID="Price" runat="server" class="form-control"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group field-product-tax_rate required">
                <label class="control-label" for="product-tax_rate">Vergi Kuru</label>

                <asp:TextBox ID="Tax_Rate" runat="server" class="form-control"></asp:TextBox>

                <div class="help-block"></div>
            </div>
            <div class="form-group field-product-decription">
                <label class="control-label" for="product-decription">Tanım</label>
                <asp:TextBox ID="Decription" runat="server" class="form-control" Rows="3" TextMode="MultiLine"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group">
                <asp:Button ID="btnCreateproduct" class="btn btn-success" runat="server" Text="Kaydet" OnClick="btnCreateproduct_Click" />

            </div>
        </div>
    </div>
</asp:Content>

