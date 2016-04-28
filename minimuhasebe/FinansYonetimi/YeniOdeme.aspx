<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="YeniOdeme.aspx.cs" Inherits="FinansYonetimi_YeniOdeme" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">Anasayfa</a></li>
        <li class="active">Yeni Ödeme</li>
    </ul>
    <div class="payment-transaction-create">
        <h1>Yeni Ödeme</h1>

        <div class="payment-transaction-form">
            <div class="form-group field-paymenttransaction-id_customer required">
                <label class="control-label" for="paymenttransaction-id_customer">Müşteri</label>
                <asp:DropDownList ID="ddlCustomer" runat="server" class="form-control select2-hidden-accessible">
                </asp:DropDownList>
            </div>
            <div class="form-group field-paymenttransaction-amount required">
                <label class="control-label" for="paymenttransaction-amount">Miktar</label>
                <asp:TextBox ID="Amount" runat="server" TextMode="Number" class="form-control"></asp:TextBox>
            </div>
            <div class="form-group field-paymenttransaction-description">
                <label class="control-label" for="paymenttransaction-description">Açıklama</label>
                <asp:TextBox ID="Description" runat="server" TextMode="MultiLine" class="form-control" Rows="3"></asp:TextBox>
            </div>
            <div class="form-group">
                <asp:Button ID="btnCreatePayment" runat="server" Text="Kaydet" class="btn btn-success" OnClick="btnCreatePayment_Click" />
            </div>
        </div>
    </div>
</asp:Content>

