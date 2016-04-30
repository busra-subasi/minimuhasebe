<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="KullaniciKayit.aspx.cs" Inherits="KullaniciYonetimi_KullaniciKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">Anasayfa</a></li>
        <li><a href="KullaniciListe.aspx">Kullanıcılar</a></li>
        <li class="active">Kullanıcı Kayıt</li>
    </ul>
    <div class="customer-create">
        <h1>Kullanıcı Kayıt</h1>
        <div class="customer-form">

            <div class="form-group">
                <label class="control-label">Ad Soyad</label>
                <asp:TextBox ID="Fullname" runat="server" class="form-control" MaxLength="20"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group ">
                <label class="control-label">Email</label>
                <asp:TextBox ID="Email" runat="server" class="form-control" MaxLength="20" TextMode="Email"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group">
                <label class="control-label">Şifre</label>
                <asp:TextBox ID="Password" runat="server" class="form-control" MaxLength="20" TextMode="Password"></asp:TextBox>
                <div class="help-block"></div>
            </div>
            <div class="form-group">
                <asp:Button ID="btnCreateUser" runat="server" Text="Kaydet" class="btn btn-success" OnClick="btnCreateUser_Click" />
            </div>

        </div>
</asp:Content>

