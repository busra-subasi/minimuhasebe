<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        #quick_start li {
            list-style: none;
            float: left;
            margin: 15px;
        }

        #quick_start > a > li > span {
            font-size: 40px;
        }
    </style>
    <ul id="quick_start" class="text-center">
        <a class="glyphicon-class" href="#" title="New Sales Invoice">
            <li><span class="glyphicon glyphicon-file text-primary"></span>
                <br />
                <p class="glyphicon-class">+ Sales Invoice  </p>
            </li>
        </a>
        <a class="glyphicon-class" href="#" title="New Customer">
            <li><span class="glyphicon glyphicon-user text-primary"></span>
                <br />
                <p class="glyphicon-class">+ Customer  </p>
            </li>
        </a>
        <a class="glyphicon-class" href="#" title="New Product">
            <li><span class="glyphicon glyphicon-bookmark text-primary"></span>
                <br />
                <p class="glyphicon-class">+ Product  </p>
            </li>
        </a>
        <a class="glyphicon-class" href="#" title="New Payment Transaction">
            <li><span class="glyphicon glyphicon-usd text-primary"></span>
                <br />
                <p class="glyphicon-class">+ Payment  </p>
            </li>
        </a>
    </ul>
</asp:Content>

