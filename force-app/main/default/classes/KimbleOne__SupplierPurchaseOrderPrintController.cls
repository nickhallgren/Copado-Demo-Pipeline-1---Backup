/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SupplierPurchaseOrderPrintController {
    global String documentUrl {
        get;
    }
    global KimbleOne.AddressDTO FromAddress {
        get;
        set;
    }
    global KimbleOne.AddressDTO ShippingAddress {
        get;
        set;
    }
    global Account supplierAccount {
        get;
        set;
    }
    global KimbleOne__AccountInvoicingModel__c supplierAccountInvoicingModel {
        get;
        set;
    }
    global KimbleOne__SupplierPurchaseOrder__c supplierPO {
        get;
        set;
    }
    global KimbleOne__SupplierRequisition__c supplierRequisition {
        get;
        set;
    }
    global KimbleOne.AddressDTO ToAddress {
        get;
        set;
    }
    global SupplierPurchaseOrderPrintController() {

    }
    global String getDoNotShowLineNumbers() {
        return null;
    }
    global String getShowLineNumbers() {
        return null;
    }
    global List<KimbleOne__SupplierRequisitionLine__c> getSupplierRequisitionLines() {
        return null;
    }
}
