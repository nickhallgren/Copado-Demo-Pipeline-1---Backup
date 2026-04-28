/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class SupplierInvoicePrintController {
    global String documentUrl {
        get;
    }
    global KimbleOne.AddressDTO FromAddress {
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
    global KimbleOne__SupplierInvoice__c supplierInvoice {
        get;
        set;
    }
    global KimbleOne__TaxRate__c supplierInvoiceTaxRate {
        get;
    }
    global KimbleOne__SupplierRequisition__c supplierRequisition {
        get;
        set;
    }
    global KimbleOne.AddressDTO ToAddress {
        get;
        set;
    }
    global SupplierInvoicePrintController() {

    }
    global List<KimbleOne__SupplierInvoiceLine__c> getSupplierInvoiceLines() {
        return null;
    }
}
