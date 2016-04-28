<%@ Page Title="" Language="C#" MasterPageFile="~/AnaSablon.master" AutoEventWireup="true" CodeFile="FaturaKayit.aspx.cs" Inherits="FinansYonetimi_FaturaKayit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <ul class="breadcrumb">
        <li><a href="/Default.aspx">Home</a></li>
        <li><a href="/FinansYonetimi/FaturaListe.aspx">Satış Faturaları</a></li>
        <li class="active">Yeni Fatura</li>
    </ul>
    <div class="sales-invoice-create">
        <form id="sales-invoice-create-form" action="/web/index.php?r=salesinvoice%2Fcreate" method="post">
            <input type="hidden" name="_csrf" value="OGpWVzY1cnhtOQR6QWELDlEzEWRzUDg0Ulg1DwIHQEBcBwMFAHwrPg=="><h1>Create Sales Invoice </h1>

            <div class="sales-invoice-form">
                <div class="form-group field-salesinvoice-id_customer required has-success">

                    <select id="salesinvoice-id_customer" class="form-control select2-hidden-accessible" name="SalesInvoice[id_customer]" onchange="onCustomerChange(this.value)"  >
                        <option value="">Select a Customer ...</option>
                        <option value="7">test</option>
                    </select>
                    <div class="help-block"></div>
                </div>
                <div class="form-group field-salesinvoice-id_invoice_status required">

                    <select id="salesinvoice-id_invoice_status" class="form-control select2-hidden-accessible" name="SalesInvoice[id_invoice_status]">
                        <option value="1">Profor</option>
                        <option value="2">Confirm</option>
                        <option value="3">Print</option>
                        <option value="4">Send</option>
                    </select>
                    <div class="help-block"></div>
                </div>
                <div class="form-group field-salesinvoice-description">

                    <textarea id="salesinvoice-description" class="form-control" name="SalesInvoice[description]" rows="3" placeholder="description"></textarea>

                    <div class="help-block"></div>
                </div>
                <input id="sales_invoice_item_list_form_input" name="sales_invoice_item_list_form_input" type="hidden">

                <div id="form-hide-fields" class="row" style="">
                    <div class="col-xs-3">
                        <div class="form-group field-salesinvoice-tax_number required">
                            <label class="control-label" for="salesinvoice-tax_number">Tax Number</label>
                            <input type="text" id="salesinvoice-tax_number" class="form-control" name="SalesInvoice[tax_number]" readonly="" placeholder="Tax Number">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <div class="form-group field-salesinvoice-tax_office required">
                            <label class="control-label" for="salesinvoice-tax_office">Tax Office</label>
                            <input type="text" id="salesinvoice-tax_office" class="form-control" name="SalesInvoice[tax_office]" readonly="" placeholder="Tax Office">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="form-group field-salesinvoice-total">
                            <label class="control-label" for="salesinvoice-total">Total</label>
                            <input type="text" id="salesinvoice-total" class="form-control" name="SalesInvoice[total]" readonly="" placeholder="Total">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="form-group field-salesinvoice-taxtotal">
                            <label class="control-label" for="salesinvoice-taxtotal">Taxtotal</label>
                            <input type="text" id="salesinvoice-taxtotal" class="form-control" name="SalesInvoice[taxtotal]" readonly="" placeholder="Tax Total">

                            <div class="help-block"></div>
                        </div>
                    </div>
                    <div class="col-xs-2">
                        <div class="form-group field-salesinvoice-grandtotal">
                            <label class="control-label" for="salesinvoice-grandtotal">Grandtotal</label>
                            <input type="text" id="salesinvoice-grandtotal" class="form-control" name="SalesInvoice[grandtotal]" readonly="" placeholder="Grand Total">

                            <div class="help-block"></div>
                        </div>
                    </div>
                </div>

                <table id="sales_invoice_item_list" class="table table-striped table-bordered" style="">
                    <thead>
                        <tr>
                            <th><span>Id Product</span></th>
                            <th><span>Product</span></th>
                            <th><span>Quantity</span></th>
                            <th><span>Price</span></th>
                            <th><span>Tax Rate</span></th>
                            <th><span>Total</span></th>
                            <th><span>Tax Total</span></th>
                            <th><span>Grand Total</span></th>
                            <th><span></span></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr id="sales_invoice_item_6">
                            <td><span id="sales_invoice_item_id_6">6</span></td>
                            <td><span id="sales_invoice_item_name_6">Product1</span></td>
                            <td>
                                <input id="sales_invoice_item_quantity_6" type="text" class="form-control" onkeyup="onValueChange(6)" value="1"></td>
                            <td>
                                <input id="sales_invoice_item_price_6" type="text" class="form-control" onkeyup="onValueChange(6)" value="120.0000"></td>
                            <td>
                                <input id="sales_invoice_item_taxrate_6" type="text" class="form-control" value="0.0500" readonly=""></td>
                            <td>
                                <input id="sales_invoice_item_total_6" type="text" class="form-control" value="120" readonly=""></td>
                            <td>
                                <input id="sales_invoice_item_taxtotal_6" type="text" class="form-control" value="6" readonly=""></td>
                            <td>
                                <input id="sales_invoice_item_grandtotal_6" type="text" class="form-control" value="126" readonly=""></td>
                            <td class="text-center"><a href="#" onclick="deleteSalesInvoiceItem(6)" class="glyphicon glyphicon-trash"></a></td>
                        </tr>
                        <tr id="sales_invoice_item_7">
                            <td>
                                <span id="sales_invoice_item_id_7">7</span></td>
                            <td><span id="sales_invoice_item_name_7">Bilgisayar</span></td>
                            <td>
                                <input id="sales_invoice_item_quantity_7" type="text" class="form-control" onkeyup="onValueChange(7)" value="5"></td>
                            <td>
                                <input id="sales_invoice_item_price_7" type="text" class="form-control" onkeyup="onValueChange(7)" value="1000.0000"></td>
                            <td>
                                <input id="sales_invoice_item_taxrate_7" type="text" class="form-control" value="0.9999" readonly=""></td>
                            <td>
                                <input id="sales_invoice_item_total_7" type="text" class="form-control" value="5000" readonly=""></td>
                            <td>
                                <input id="sales_invoice_item_taxtotal_7" type="text" class="form-control" value="4999.5" readonly=""></td>
                            <td>
                                <input id="sales_invoice_item_grandtotal_7" type="text" class="form-control" value="9999.5" readonly=""></td>
                            <td class="text-center"><a href="#" onclick="deleteSalesInvoiceItem(7)" class="glyphicon glyphicon-trash"></a></td>

                        </tr>
                    </tbody>
                    <tfoot>
                        <tr>
                            <td colspan="5"></td>
                            <td class="bg-info" colspan="1"><span id="sales_invoice_item_total">5120</span></td>
                            <td class="bg-danger" colspan="1"><span id="sales_invoice_item_tax_total">5005.5</span></td>
                            <td class="bg-success" colspan="1"><span id="sales_invoice_item_grand_total">10125.5</span></td>
                            <td colspan="1"></td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <select id="product_items" class="form-control select2-hidden-accessible" name="product_items">
                                    <option value="">Select Product ...</option>
                                    <option value="6">Product1</option>
                                    <option value="7">Bilgisayar</option>
                                </select>
                                 <td colspan="4">
                                <input id="product_item_quantity" name="product_item_quantity" type="number" class="form-control" value="" onkeypress="if(event.keyCode==13){getProduct(); return true;}">
                            </td>
                            <td colspan="1">
                                <input id="product_item_add" name="product_item_add" type="button" class="btn btn-success" value="Add Item" onclick="getProduct()">
                            </td>
                        </tr>
                    </tfoot>
                </table>
                <button type="button" class="btn btn-success" onclick="onBeforeSubmit()">Create</button>
            </div>
        </form>

        <script type="text/javascript">
            var isSubmit = false;
            $(function () {
                $("#sales-invoice-create-form").submit(function (e) {
                    if (!isSubmit) {
                        e.preventDefault();
                    }
                });
            });
            function onCustomerChange(id_customer) {
                $.ajax({
                    type: "POST",
                    url: '/web/index.php?r=customer/getcustomer',
                    data: { id_customer: id_customer },
                    dataType: "text",
                    success: function (result) {
                        var customerJSON = JSON.parse(result);
                        //console.log(customerJSON);
                        $('#salesinvoice-tax_number').val(customerJSON.tax_number);
                        $('#salesinvoice-tax_office').val(customerJSON.tax_office);
                        $('#form-hide-fields').show();
                        $('#sales_invoice_item_list').show();
                    }
                });
            }
            function getProduct() {
                var selectedValue = $("#product_items option:selected").val(), invoice_quantity = '#sales_invoice_item_quantity_', sales_quantity = '#sales_invoice_item_', product_quantity = '#product_item_quantity';
                if ($(product_quantity).val() != 0 && $(product_quantity).val() != "" && selectedValue != "") {
                    var table_tbody_item = $(sales_quantity + selectedValue);//tabloda bu ürün daha önce eklenmiş mi  kontrolü yapıldı
                    if (table_tbody_item.length == 0) {
                        $.ajax(
                            {
                                type: "POST",
                                url: '/web/index.php?r=product/getproductprice',
                                data: { id_product: selectedValue },
                                dataType: "text",
                                success: function (result) {
                                    var productJSON = JSON.parse(result);
                                    //
                                    var quantity = $(product_quantity).val();
                                    var price = productJSON.price;
                                    var total = price * quantity;
                                    var taxTotal = total * productJSON.tax_rate;
                                    var grandTotal = total + taxTotal;
                                    //
                                    var tbodyItem = "<tr id='sales_invoice_item_" + productJSON.id_product + "'>";
                                    tbodyItem += "       <td> <span   id='sales_invoice_item_id_" + productJSON.id_product + "'>" + productJSON.id_product + "</span></td>";
                                    tbodyItem += "       <td> <span   id='sales_invoice_item_name_" + productJSON.id_product + "'>" + productJSON.name + "</span></td>";
                                    tbodyItem += "       <td> <input  id='sales_invoice_item_quantity_" + productJSON.id_product + "' type='text' class='form-control' onkeyup='onValueChange(" + productJSON.id_product + ")'  value='" + quantity + "'/></td>";
                                    tbodyItem += "       <td> <input  id='sales_invoice_item_price_" + productJSON.id_product + "'  type='text' class='form-control' onkeyup='onValueChange(" + productJSON.id_product + ")'  value='" + price + "'/></td>";
                                    tbodyItem += "       <td> <input  id='sales_invoice_item_taxrate_" + productJSON.id_product + "' type='text' class='form-control'   value='" + productJSON.tax_rate + "'' readonly/></td>";
                                    tbodyItem += "       <td> <input  id='sales_invoice_item_total_" + productJSON.id_product + "' type='text' class='form-control'   value='" + total + "'' readonly/></td>";
                                    tbodyItem += "       <td> <input  id='sales_invoice_item_taxtotal_" + productJSON.id_product + "' type='text' class='form-control'   value='" + taxTotal + "'' readonly/></td>";
                                    tbodyItem += "       <td> <input  id='sales_invoice_item_grandtotal_" + productJSON.id_product + "' type='text' class='form-control'  value='" + grandTotal + "' readonly/></td>";
                                    tbodyItem += "       <td class='text-center'> <a href='#' onclick='deleteSalesInvoiceItem(" + productJSON.id_product + ")' class='glyphicon glyphicon-trash' > </a></td>"
                                    tbodyItem += "</tr>";
                                    //tablo ya ekle
                                    $('#sales_invoice_item_list tbody').append(tbodyItem);
                                    $(product_quantity).val("");
                                    $('#product_items').select2("open");
                                    //fiyat güncelle
                                    onCalculate();
                                }
                            });
                    }
                    else {
                        //ürün zaten ekli
                        $(invoice_quantity + selectedValue).focus();
                        $(invoice_quantity + selectedValue).select();
                    }
                }
            }
            function onValueChange(id_product) {
                var quantity = $("#sales_invoice_item_quantity_" + id_product).val();
                var price = $("#sales_invoice_item_price_" + id_product).val();
                var total = price * quantity;
                var taxTotal = quantity * price * $("#sales_invoice_item_taxrate_" + id_product).val();
                var grandTotal = total + taxTotal;

                $("#sales_invoice_item_total_" + id_product).val(total);
                $("#sales_invoice_item_taxtotal_" + id_product).val(taxTotal);
                $("#sales_invoice_item_grandtotal_" + id_product).val(grandTotal);
                //fiyat güncelle
                onCalculate();
            }
            function deleteSalesInvoiceItem(id_product) {
                $('#sales_invoice_item_' + id_product).remove();
                //fiyat güncelle
                onCalculate();
            }
            function onBeforeSubmit() {
                var table = document.getElementById('sales_invoice_item_list');
                var rows = table.getElementsByTagName('tr');
                var cells;
                var productItemList = "";

                for (var i = 1; i < rows.length - 2; i++) {  // 1 den başladım çünkü thead içindekileri de alıyor ve tfoot daki tr rowlarını da çıkardım;
                    cells = rows[i].getElementsByTagName('td');
                    if (!cells.length) { continue; }
                    var productItem = "";
                    for (var j = 0; j < cells.length - 1; j++) {// bir çıkardım satırın son hücresinde işlem butonları var
                        elementId = cells[j].children.item(0).getAttribute("id");
                        if (productItem == "") {
                            if (j == 0 || j == 1) { // ilk iki hücrede span var bunun kotrolü yapıldı
                                productItem = $("#" + elementId).text();
                            } else {
                                productItem = $("#" + elementId).val();
                            }
                        } else {
                            if (j == 0 || j == 1) {  // ilk iki hücrede span var bunun kotrolü yapıldı
                                productItem = productItem + "-" + $("#" + elementId).text();
                            } else {
                                productItem = productItem + "-" + $("#" + elementId).val();
                            }
                        }
                    }
                    if (productItemList == "") {
                        productItemList = productItemList + productItem;
                    } else {
                        productItemList = productItemList + "/" + productItem;
                    }
                }
                //item[]/ item[] --->itemformat  id-name-quantity-price-taxrate-total-taxtotal-grandtotal/ id-name-quantity-price-taxrate-total-taxtotal-grandtotal
                //console.log(productItemList); 
                $("#sales_invoice_item_list_form_input").val(productItemList);
                isSubmit = true;
                $("#sales-invoice-create-form").submit();
            }
            function onCalculate() {
                var table = document.getElementById('sales_invoice_item_list');
                var rows = table.getElementsByTagName('tr');
                var cells;
                var total = 0;
                var tax_total = 0;
                var grand_total = 0;

                for (var i = 1; i < rows.length - 2; i++) {  // 1 den başladım çünkü thead içindekileri de alıyor ve tfoot tr rowlarını da çıkardım;
                    cells = rows[i].getElementsByTagName('td');
                    if (!cells.length) {
                        continue;
                    }
                    total = (parseFloat(total) + parseFloat($("#" + cells[5].children.item(0).getAttribute("id")).val()));//tablodaki total kolonu;
                    tax_total = parseFloat(tax_total) + parseFloat($("#" + cells[6].children.item(0).getAttribute("id")).val());
                    grand_total = parseFloat(grand_total) + parseFloat($("#" + cells[7].children.item(0).getAttribute("id")).val());
                }
                $("#sales_invoice_item_total").text(total);
                $("#sales_invoice_item_tax_total").text(tax_total);
                $("#sales_invoice_item_grand_total").text(grand_total);

                $('#salesinvoice-total').val(total);
                $('#salesinvoice-taxtotal').val(tax_total);
                $('#salesinvoice-grandtotal').val(grand_total);
            }

        </script>

    </div>
</asp:Content>

