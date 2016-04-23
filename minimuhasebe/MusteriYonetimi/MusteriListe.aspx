<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="MusteriListe.aspx.cs" Inherits="MusteriYonetimi_MusteriListe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="#">Home</a></li>
        <li class="active">Customers</li>
    </ul>
    <div class="customer-index">
        <h1>Customers 
        <span class="pull-right"><a class="btn btn-success" href="#">Create Customer</a></span>
        </h1>
        <div id="w0" class="grid-view">
            <div class="summary">Showing <b>1-1</b> of <b>1</b> item.</div>
            <table class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th>#</th>
                        <th><a href="#" data-sort="id_customer">Id Customer</a></th>
                        <th><a href="#" data-sort="companyname">Company Name</a></th>
                        <th><a href="#" data-sort="firstname">Firstname</a></th>
                        <th><a href="#" data-sort="lastname">Lastname</a></th>
                        <th><a href="#" data-sort="tax_number">Tax Number</a></th>
                        <th><a href="#" data-sort="tax_office">Tax Office</a></th>                        
                        <th class="action-column">&nbsp;</th>
                    </tr>
                    <tr id="w0-filters" class="filters">
                        <td>&nbsp;</td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[id_customer]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[companyname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[firstname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[lastname]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[tax_number]"></td>
                        <td>
                            <input type="text" class="form-control" name="CustomerSearch[tax_office]"></td>
                        <td>&nbsp;</td>
                    </tr>
                </thead>
                <tbody>
                    <tr data-key="7">
                        <td>1</td>
                        <td>7</td>
                        <td>test</td>
                        <td>deneme</td>
                        <td>deneme</td>
                        <td>1231231</td>
                        <td>office</td>
                        <td><a href="#" title="View" aria-label="View" data-pjax="0"><span class="glyphicon glyphicon-eye-open"></span></a><a href="/web/index.php?r=customer%2Fupdate&amp;id=7" title="Update" aria-label="Update" data-pjax="0"><span class="glyphicon glyphicon-pencil"></span></a><a href="/web/index.php?r=customer%2Fdelete&amp;id=7" title="Delete" aria-label="Delete" data-confirm="Are you sure you want to delete this item?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>

