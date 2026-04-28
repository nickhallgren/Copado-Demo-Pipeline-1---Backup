/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class InvoicePrintController {
    global String customerReference {
        get;
        set;
    }
    global String documentUrl {
        get;
    }
    global KimbleOne.AddressDTO FromAddress {
        get;
        set;
    }
    global String FromAddressStyle {
        get;
        set;
    }
    global KimbleOne__Invoice__c invoice {
        get;
        set;
    }
    global Account invoiceAccount {
        get;
        set;
    }
    global KimbleOne__AccountInvoicingModel__c invoiceAccountInvoicingModel {
        get;
        set;
    }
    global KimbleOne__ExchangeRate__c invoiceExchangeRate {
        get;
    }
    global KimbleOne__InvoiceFormat__c invoiceFormat {
        get;
        set;
    }
    global Date invoicePaymentDueDate {
        get;
    }
    global KimbleOne__TaxRate__c invoiceTaxRate {
        get;
    }
    global String paymentTermsLabelT1 {
        get;
        set;
    }
    global String paymentTermsLabelT2 {
        get;
        set;
    }
    global Set<String> poRefs {
        get;
        set;
    }
    global String taxCode {
        get;
    }
    global KimbleOne.InvoicePrintSectionsAndLines TheSectionsAndLines {
        get;
        set;
    }
    global KimbleOne.AddressDTO ToAddress {
        get;
        set;
    }
    global String ToAddressStyle {
        get;
        set;
    }
    global InvoicePrintController() {

    }
    global String getDisplayBillingContact() {
        return null;
    }
    global String getDisplayDefaultFormat() {
        return null;
    }
    global String getDisplayExpensesTable() {
        return null;
    }
    global String getDisplayPOPerLine() {
        return null;
    }
    global String getDisplayTabularFormat() {
        return null;
    }
    global String getDoNotDisplayPOPerLine() {
        return null;
    }
    global String getDoNotShowLineNumbers() {
        return null;
    }
    global List<KimbleOne__InvoiceLine__c> getExpenseInvoiceLines() {
        return null;
    }
    global List<KimbleOne__InvoiceLine__c> getInvoiceLines() {
        return null;
    }
    global String getShowLineNumbers() {
        return null;
    }
}
