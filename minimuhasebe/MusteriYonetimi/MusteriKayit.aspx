<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriKayit.aspx.cs" Inherits="MusteriYonetimi_MusteriKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/web/index.php">Home</a></li>
        <li><a href="/web/index.php?r=customer%2Findex">Customers</a></li>
        <li class="active">Create Customer</li>
    </ul>
    <div class="customer-create">
        <h1>Create Customer</h1>
        <div class="customer-form">
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group field-customer-firstname required">
                            <label class="control-label" for="customer-firstname">Firstname</label>
                            <asp:TextBox ID="Firstname" runat="server" class="form-control" maxlength="20"></asp:TextBox>
                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group field-customer-lastname required">
                            <label class="control-label" for="customer-lastname">Lastname</label>
                            <asp:TextBox ID="Lastname" runat="server" class="form-control" maxlength="20"></asp:TextBox>
                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>
                <div class="form-group field-customer-companyname required">
                    <label class="control-label" for="customer-companyname">Company Name</label>                    
                    <asp:TextBox ID="Companyname" runat="server" class="form-control" maxlength="100"></asp:TextBox>
                    <div class="help-block"></div>
                </div>
                <div class="form-group field-customer-address required">
                    <label class="control-label" for="customer-addres">Addres</label>
                    <asp:TextBox ID="Addres" runat="server"  TextMode="MultiLine" class="form-control" rows="6"></asp:TextBox>
                    <div class="help-block"></div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group field-customer-tax_office required">
                            <label class="control-label" for="customer-tax_office">Tax Office</label>
                            <asp:TextBox ID="Tax_Office" runat="server"  class="form-control"></asp:TextBox>
                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group field-customer-tax_number required">
                            <label class="control-label" for="customer-tax_number">Tax Number</label>
                            <asp:TextBox ID="Tax_Number" runat="server"  class="form-control" MaxLength="11"></asp:TextBox>
                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group field-customer-email required">
                            <label class="control-label" for="customer-email">Email</label>
                            <asp:TextBox ID="Email" runat="server"  class="form-control"></asp:TextBox>
                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group field-customer-phone required">
                            <label class="control-label" for="customer-phone">Phone</label>
                            <asp:TextBox ID="Phone" runat="server" class="form-control"></asp:TextBox>
                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Button ID="btnCreateCustomer" runat="server" Text="Create"  class="btn btn-success" OnClick="btnCreateCustomer_Click" />                   
                </div>
        </div>
    </div>
</asp:Content>

