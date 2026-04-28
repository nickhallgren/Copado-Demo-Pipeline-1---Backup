import { LightningElement, wire, api } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';

import USER_ID from '@salesforce/user/Id';
import USERNAME_FIELD from '@salesforce/schema/User.Username';

//import submitAndProcessApprovalRequest from '@salesforce/apex/EnergyUseControllerUpdated.submitAndProcessApprovalRequest';
import getMetadataInformation from '@salesforce/apex/EnergyUseControllerUpdatedOLD.getMetadataInformation';

import NZC_Declaration_Message from '@salesforce/label/c.NZC_Declaration_Message';
import NZC_LWC_Card_Title from '@salesforce/label/c.NZC_LWC_Card_Title';
import NZC_Submit from '@salesforce/label/c.NZC_Submit';
import NZC_Success_Message from '@salesforce/label/c.NZC_Success_Message';
import NZC_Atleast_One_Fuel_Type_Should_Be_Applicable from '@salesforce/label/c.NZC_Atleast_One_Fuel_Type_Should_Be_Applicable';
import NZC_Emission_Factor_Not_Approved_Error_Message from '@salesforce/label/c.NZC_Emission_Factor_Not_Approved_Error_Message';
import NZC_Enter_All_Required_Fields from '@salesforce/label/c.NZC_Enter_All_Required_Fields';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateEnergyUseRecordsOLD extends LightningElement {

    label = {
        NZC_Declaration_Message,
        NZC_LWC_Card_Title,
        NZC_Submit,
        NZC_Success_Message,
        NZC_Emission_Factor_Not_Approved_Error_Message
    };

    @api recordId;
    recordIdInParent = '';
    activeSections = [];
    createdRecordIdList = [];
    dataFromApex = [];
    uniquestamp;
    declarationaccepted;
    checkdeclaration = true;
    showSuccessMessage = false;
    showSpinner = false; //true
    approvedEmissionFactorsFound;
    isFormLoadingComplete = false;
    numberOfApplicableRecords = 0;

    get showForm() {
        //var showFormTempVariable = this.showSuccessMessage && this.approvedEmissionFactorsFound;
        // console.log('Success Message is ' + this.showSuccessMessage);
        // console.log('approvedEmissionFactorsFound is ' + this.approvedEmissionFactorsFound);
        // console.log('show Form TempVariable is ' + showFormTempVariable);
        return !this.showSuccessMessage && this.approvedEmissionFactorsFound;
    }

    connectedCallback() {
        this.handleSpinner();
        this.recordIdInParent = this.recordId;
        getMetadataInformation({ parentSiteInfo: this.recordIdInParent })
            .then((data) => {
                //console.log('data is ' + JSON.stringify(data));
                this.approvedEmissionFactorsFound = data.approvedEmissionFactorsFound;
                //console.log('this.approvedEmissionFactorsFound',this.approvedEmissionFactorsFound);
                if (this.approvedEmissionFactorsFound) {
                    this.dataFromApex = data.scopeMetadataWrapperData;
                    this.dataFromApex.forEach((ele) => {
                        this.activeSections.push(ele.scopeLabel);
                    });
                }
                this.isFormLoadingComplete = true;
                this.handleSpinner();
            })
            .catch((error) => {
                //console.log('error in connected callback', error);
                this.handleSpinner();
            });

    }

    @wire(getRecord, {
        recordId: USER_ID,
        fields: [USERNAME_FIELD]
    })
    fetchUser({ error, data }) {
        if (error) {
            this.error = error;
        } else if (data) {
            this.uniquestamp =
                data.fields.Username.value + " " + new Date().toISOString();
        }
    }

    successMsg() {
            //this.handleSpinner();
            this.showSpinner = false;
            this.showSuccessMessage = true;
            this.topFunction();
    }

    //added new
    handleChildRecordCreation(evt){
        //console.log('event from child to parent:',evt.detail);
        var x = '';
        x=evt.detail;
        this.createdRecordIdList.push(x);
       // console.log('list',this.createdRecordIdList);
        if (this.createdRecordIdList.length > 0) {
         //   console.log('this.numberOfApplicableRecords',this.numberOfApplicableRecords);
         //   console.log('inside if of handle event');
            this.successMsg();
        }
    }

    //onchange method for submit button
    handleSubmit() {
        this.handleSpinner();
        const childComponents = this.template.querySelectorAll("c-create-energy-use-records-child-o-l-d");
        //console.log('abc',typeof(childComponents));
        var isValidList = [];
        var fileUploaded = false;
        var atleastOneApplicableRecordExist = false;
        try {
            //console.log('above first for each in child js',);
            childComponents.forEach((childComponent) => {
                //console.log('inside first for each in child js disable value',childComponent.disableAll);
                if (childComponent.disableAll === false) {
                    //console.log('inside old lwc if line 120', atleastOneApplicableRecordExist);
                    atleastOneApplicableRecordExist = true;
                    this.numberOfApplicableRecords++;
                }
                
            });
            if (!atleastOneApplicableRecordExist) {
                //console.log('atlease one record should be applicable');
                const evt = new ShowToastEvent({
                    title: 'Error!',
                    message: NZC_Atleast_One_Fuel_Type_Should_Be_Applicable,
                    variant: 'error',
                    mode: 'dismissable'
                });
                this.dispatchEvent(evt);
                this.handleSpinner();
            }
            else {
                childComponents.forEach((childComponent) => {
                    isValidList.push(childComponent.isInputValid());
                    var fileName = childComponent.getcurrentFileUploadedName();
                    //console.log('fileName in parent',fileName);
                    var renFileName = childComponent.getcurrentRenFileUploadedName();
                    //console.log('renfileName in parent',renFileName);
                    var renEnabled = childComponent.getShowRenewablePart();
                    //console.log('renEnabled in parent',renEnabled);
                    var isFuelTypeApplicable = childComponent.getcurrentApplicabilityValue();
                    //console.log('isFuelTypeApplicable in parent',isFuelTypeApplicable);
                    var renDisabled = childComponent.disableRenewable;
                    //console.log('rendisabled in parent',typeof(renDisabled));
                    if(isFuelTypeApplicable == "Applicable"){
                        //console.log('fuel type is applicable');
                        if (renEnabled == 'false') {
                            //console.log('inside renEnabled equals to false');
                            if (fileName == null || fileName=='') {
                                childComponent.showFileError = true;
                                fileUploaded = false;
                                //console.log('fileUploaded',fileUploaded);
                            }
                            else{
                                fileUploaded = true;
                                //console.log('fileUploaded',fileUploaded);
                            }
                        }
                        else {
                            //console.log('inside renEnabled equals to true');
                            if ((fileName == null || fileName=='') && (renFileName == null || renFileName=='')) {
                                childComponent.showFileError = true;
                                childComponent.showRenFileError = true;
                                fileUploaded = false;
                            }
                            else if (fileName == null || fileName=='') {
                                childComponent.showFileError = true;
                                fileUploaded = false;
                            }
                            else if (renFileName == null || renFileName=='') {
                                if(renDisabled == false){
                                    childComponent.showRenFileError = true;
                                    fileUploaded = false;
                                } 
                                else{
                                    fileUploaded = true;
                                } 
                            }
                            else {
                                fileUploaded=true;
                                //do nothing
                            }
                            
                        }
                    }
                    
                });

                childComponents.forEach((childComponent) => {
                    var isValid = childComponent.isInputValid();
                    if (isValid === false || fileUploaded===false) {
                        //console.log('isValid = ',isValid);
                        //console.log('fileUploaded = ',fileUploaded);
                        this.handleSpinner();
                        const evt = new ShowToastEvent({
                            title: 'Error!',
                            message: NZC_Enter_All_Required_Fields,
                            variant: 'error',
                            mode: 'dismissable'
                        });
                        this.dispatchEvent(evt);
                        throw new Error("Required");
                    }
                });

                childComponents.forEach((childComponent) => {
                    childComponent.handleCreateEnergyUseRecords();
                });
            }

        } catch (e) {
            //console.log('error is: ', e);
        }

    }

    //loading button
    handleSpinner() {
        this.showSpinner = !this.showSpinner;
    }

    //scroll to top method
    topFunction() {
        const scrollOptions = {
            left: 0,
            top: 0,
            behavior: 'smooth'
        };
        window.scrollTo(scrollOptions);
    }

    //onchange method for declaration method
    handleDeclarationChange(event) {
        this.declarationaccepted = event.target.checked;
        if (this.declarationaccepted === true) {
            this.checkdeclaration = false;
        } else {
            this.checkdeclaration = true;
        }
    }
}