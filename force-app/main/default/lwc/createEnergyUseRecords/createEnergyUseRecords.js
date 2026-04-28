import { LightningElement, api } from 'lwc';

import getMetadataInformation from '@salesforce/apex/EnergyUseControllerUpdated.getMetadataInformation';
import createEnergyUseRecord from "@salesforce/apex/EnergyUseControllerUpdated.createEnergyUseRecord";

import NZC_Declaration_Message from '@salesforce/label/c.NZC_Declaration_Message';
import NZC_LWC_Card_Title from '@salesforce/label/c.NZC_LWC_Card_Title';
import NZC_Submit from '@salesforce/label/c.NZC_Submit';
import NZC_Success_Message from '@salesforce/label/c.NZC_Success_Message';
import NZC_Atleast_One_Fuel_Type_Should_Be_Applicable from '@salesforce/label/c.NZC_Atleast_One_Fuel_Type_Should_Be_Applicable';
import NZC_Emission_Factor_Not_Approved_Error_Message from '@salesforce/label/c.NZC_Emission_Factor_Not_Approved_Error_Message';
import NZC_Enter_All_Required_Fields from '@salesforce/label/c.NZC_Enter_All_Required_Fields';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class CreateEnergyUseRecords extends LightningElement {

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
    declarationaccepted;
    checkdeclaration = true;
    showSuccessMessage = false;
    showSpinner = false; //true
    approvedEmissionFactorsFound;
    isFormLoadingComplete = false;

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
                //console.log('data is ' + data);
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

    successMsg() {
        this.handleSpinner();
        this.showSpinner = false;
        this.showSuccessMessage = true;
        this.topFunction();
    }

    //onchange method for submit button
    handleSubmit() {
        this.handleSpinner();
        const childComponents = this.template.querySelectorAll("c-create-energy-use-records-child");
        //console.log('abc',typeof(childComponents));
        var isValidList = [];
        var fileUploaded = true;
        var atleastOneApplicableOrEstimatedRecordExist = false; //Created New Variable as part of BAU Release 3 CR1
        try {
            childComponents.forEach((childComponent) => {
                const applicability = childComponent.getcurrentApplicabilityValue();
                // console.log('Applicability:',applicability);
            if (applicability === "Applicable" || applicability === "To be Estimated") {
                atleastOneApplicableOrEstimatedRecordExist = true;
                // if (childComponent.disableAll === false) {
                //     atleastOneApplicableRecordExist = true;
                // }
            }
            });
            
            if (!atleastOneApplicableOrEstimatedRecordExist) {
                //showing toast msg if none of the fuel types are applicable
                //console.log('atlease one record should be applicable');
                const evt = new ShowToastEvent({
                    title: 'Error!',
                    message: NZC_Atleast_One_Fuel_Type_Should_Be_Applicable,
                    variant: 'error',
                    mode: 'dismissable'
                });
                this.dispatchEvent(evt);
                this.handleSpinner();
                console.log('after 107');
                return;
            }
            else {
                childComponents.forEach((childComponent) => {
                    isValidList.push(childComponent.isInputValid());
                    var fileName = childComponent.getcurrentFileUploadedName();
                    // console.log('fileName in parent',fileName);
                    var renFileName = childComponent.getcurrentRenFileUploadedName();
                    //console.log('renfileName in parent',renFileName);
                    var renEnabled = childComponent.getShowRenewablePart();
                    //console.log('renEnabled in parent',renEnabled);
                    
                    var isFuelTypeApplicable = childComponent.getcurrentApplicabilityValue();
                    //console.log('isFuelTypeApplicable in parent',isFuelTypeApplicable);
                    var renDisabled = childComponent.disableRenewable;
                    //console.log('rendisabled in parent',typeof(renDisabled));
                    if (isFuelTypeApplicable == "Applicable") {
                        console.log('fuel type is applicable or to be estimated');
                        if (renEnabled == 'false') {
                            // console.log('inside renEnabled equals to false');
                            if (fileName == null || fileName == '') {
                                childComponent.showFileError = true;
                                fileUploaded = false;
                                // console.log('fileUploaded',fileUploaded);
                            }
                            else {
                                fileUploaded = true;
                                // console.log('fileUploaded',fileUploaded);
                            }
                        }
                        else {
                            console.log('inside renEnabled equals to true');
                            if ((fileName == null || fileName == '') && (renFileName == null || renFileName == '')) {
                                childComponent.showFileError = true;
                                childComponent.showRenFileError = true;
                                fileUploaded = false;
                            }
                            else if (fileName == null || fileName == '') {
                                childComponent.showFileError = true;
                                fileUploaded = false;
                            }
                            else if (renFileName == null || renFileName == '') {
                                if (renDisabled == false) {
                                    childComponent.showRenFileError = true;
                                    fileUploaded = false;
                                }
                                else {
                                    fileUploaded = true;
                                }
                            }
                            else {
                                fileUploaded = true;
                                //do nothing
                            }

                        }
                    }

                });

                //showing toast msg if any of the required field is not populated
                childComponents.forEach((childComponent) => {
                    var isValid = childComponent.isInputValid();
                    // console.log("child component isInputValid",isValid);
                    // console.log("child component fileuploaded",fileUploaded);
                    if (isValid === false || fileUploaded === false) {
                        // console.log('isValid = ',isValid);
                        // console.log('fileUploaded = ',fileUploaded);
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

                //getting a list of all the promises from child components, adding them in the list and sending them
                //to the apex method to create the energy use records and linking file to them and creating data logs records 
                const childRecordsPromises = [];
                childComponents.forEach((childComponent) => {
                    console.log('inside for each 212');
                    childRecordsPromises.push(childComponent.handleCreateEnergyUseRecords());
                    //console.log('inside for each 219', JSON.stringify(childRecordsPromises));
                })
                Promise.all(childRecordsPromises).then((childRecordsJSON) => {
                    //console.log('All Child Records are ' + JSON.stringify(childRecordsJSON));
                    createEnergyUseRecord({ energyUseWrapper : childRecordsJSON })
                        .then((energyUseRec) => {
                            //console.log("Records created are ", energyUseRec);
                            //console.log("Records created are ", JSON.stringify(energyUseRec));
                            this.successMsg();
                        })
                        .catch((error) => {
                            //console.log("error while creating record", error);
                        });
                }).catch((error) => {
                    //console.log("error while creating record", error);
                    //this.createErrorLogRecord(error.body.message);
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