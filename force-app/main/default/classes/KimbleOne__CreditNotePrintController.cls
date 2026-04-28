/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class CreditNotePrintController {
    global KimbleOne__CreditNote__c creditNote {
        get;
        set;
    }
    global Account creditNoteAccount {
        get;
        set;
    }
    global KimbleOne__AccountInvoicingModel__c creditNoteAccountInvoicingModel {
        get;
        set;
    }
    global KimbleOne__ExchangeRate__c creditNoteExchangeRate {
        get;
    }
    global KimbleOne__TaxRate__c creditNoteTaxRate {
        get;
    }
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
    global KimbleOne__InvoiceFormat__c invoiceFormat {
        get;
        set;
    }
    global String taxCode {
        get;
    }
    global KimbleOne.CreditNotePrintSectionsAndLines TheSectionsAndLines {
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
    global CreditNotePrintController() {

    }
    global List<KimbleOne__CreditNoteLine__c> getCreditNoteLines() {
        return null;
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
    global String getDisplayTabularFormat() {
        return null;
    }
    global String getDoNotShowLineNumbers() {
        return null;
    }
    global List<KimbleOne__CreditNoteLine__c> getExpenseCreditNoteLines() {
        return null;
    }
    global String getShowLineNumbers() {
        return null;
    }
}
