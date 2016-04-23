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
            <form id="w0" action="" method="post">                
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group field-customer-firstname required">
                            <label class="control-label" for="customer-firstname">Firstname</label>
                            <input type="text" id="customer-firstname" class="form-control" name="Customer[firstname]" maxlength="20">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group field-customer-lastname required">
                            <label class="control-label" for="customer-lastname">Lastname</label>
                            <input type="text" id="customer-lastname" class="form-control" name="Customer[lastname]" maxlength="20">

                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>
                <div class="form-group field-customer-companyname required">
                    <label class="control-label" for="customer-companyname">Company Name</label>
                    <input type="text" id="customer-companyname" class="form-control" name="Customer[companyname]" maxlength="100">

                    <div class="help-block"></div>
                </div>
                <div class="form-group field-customer-address required">
                    <label class="control-label" for="customer-address">Address</label>
                    <textarea id="customer-address" class="form-control" name="Customer[address]" rows="6"></textarea>

                    <div class="help-block"></div>
                </div>
                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group field-customer-tax_office required">
                            <label class="control-label" for="customer-tax_office">Tax Office</label>
                            <input type="text" id="customer-tax_office" class="form-control" name="Customer[tax_office]" maxlength="500">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group field-customer-tax_number required">
                            <label class="control-label" for="customer-tax_number">Tax Number</label>
                            <input type="number" id="customer-tax_number" class="form-control" name="Customer[tax_number]">

                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-6">
                        <div class="form-group field-customer-email required">
                            <label class="control-label" for="customer-email">Email</label>
                            <input type="text" id="customer-email" class="form-control" name="Customer[email]" maxlength="20">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-6">
                        <div class="form-group field-customer-phone required">
                            <label class="control-label" for="customer-phone">Phone</label>
                            <input type="phone" id="customer-phone" class="form-control" name="Customer[phone]" maxlength="50">

                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <button type="submit" class="btn btn-success">Create</button>
                </div>
            </form>
        </div>
    </div>
</asp:Content>

