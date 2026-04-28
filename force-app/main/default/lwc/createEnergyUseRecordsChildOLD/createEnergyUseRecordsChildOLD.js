import { LightningElement, api, wire } from "lwc";
import { createRecord } from "lightning/uiRecordApi";
import linkFile from "@salesforce/apex/EnergyUseControllerUpdatedOLD.linkFile";
import STNRYASSETENRGYUSE_OBJECT from "@salesforce/schema/StnryAssetEnrgyUse";
import NAME_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.Name";
import FUELTYPE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.FuelType";
import FUELCONSUMPTION_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.FuelConsumption";
import FUELCONSUMPTIONUNIT_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.FuelConsumptionUnit";
import STARTDATE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.StartDate";
import ENDDATE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.EndDate";
import COMMENTS_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.Comments__c";
import ENVRSRCID_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.StnryAssetEnvrSrcId";
import REVIEW_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.I_have_reviewed_all_fields_and_data__c";
import ALLOCATEDRENEWABLEENERGY_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.AllocatedRenewableEnergyInKwh";
import RENEWABLEENERGYTYPE_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.RenewableEnergyType";
import REFRIGERANTEMISSIONSFACTOR_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.RefrigerantEmssnFctrId";
import DECLARATION from "@salesforce/schema/StnryAssetEnrgyUse.I_have_reviewed_all_fields_and_data__c";
import MONTH_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.NZC_Month__c";
import CREATEDBYAUTOMATION_FIELD from "@salesforce/schema/StnryAssetEnrgyUse.NZC_Created_by_Automation__c";
import ENERGY_LOG from "@salesforce/schema/Energy_Use_Data_Log__c";
import ENERGY_USE_ID from "@salesforce/schema/Energy_Use_Data_Log__c.Stationary_Asset_Energy_Use__c";
import ENERGY_USE_COMMENTS from "@salesforce/schema/Energy_Use_Data_Log__c.Comments__c";
import ENERGY_USE_UNIT from "@salesforce/schema/Energy_Use_Data_Log__c.Consumption_Unit__c";
import ENERGY_USE_ENDDATE from "@salesforce/schema/Energy_Use_Data_Log__c.End_Date__c";
import ENERGY_USE_CONS from "@salesforce/schema/Energy_Use_Data_Log__c.Fuel_Consumption__c";
import ENERGY_USE_TYPE from "@salesforce/schema/Energy_Use_Data_Log__c.Fuel_Type__c";
import ENERGY_USE_OPT from "@salesforce/schema/Energy_Use_Data_Log__c.Option_Selected__c";
import ENERGY_USE_STARTDATE from "@salesforce/schema/Energy_Use_Data_Log__c.Start_Date__c";
import ENERGY_USE_TIMESTAMP from "@salesforce/schema/Energy_Use_Data_Log__c.User_Time__c";
import SITEINFO_FIELD from "@salesforce/schema/Energy_Use_Data_Log__c.Site_Information__c";
import FUELVALUE_FIELD from "@salesforce/schema/Energy_Use_Data_Log__c.Fuel_Value__c";
import CREATEDBYAUTOMATIONLOG_FIELD from "@salesforce/schema/Energy_Use_Data_Log__c.NZC_Created_by_Automation__c";
import MONTHSELECTED_FIELD from "@salesforce/schema/Energy_Use_Data_Log__c.NZC_Month_Selected__c";
import ERRORLOG_OBJECT from "@salesforce/schema/Error_Log__c";
import ERRORDETAILS_FIELD from "@salesforce/schema/Error_Log__c.Error_Details__c";
import NZC_Energy_Use_Name from "@salesforce/label/c.NZC_Energy_Use_Name";
import NZC_Attach_Receipt from "@salesforce/label/c.NZC_Attach_Receipt";
import NZC_Fuel_Consumption from "@salesforce/label/c.NZC_Fuel_Consumption";
import NZC_Consumption_Unit from "@salesforce/label/c.NZC_Consumption_Unit";
import NZC_Start_Date from "@salesforce/label/c.NZC_Start_Date";
import NZC_End_Date from "@salesforce/label/c.NZC_End_Date";
import NZC_Comments from "@salesforce/label/c.NZC_Comments";
import NZC_Refrigerant_Emissions_Type from "@salesforce/label/c.NZC_Refrigerant_Emissions_Type";
import NZC_Renewable_Not_Applicable from "@salesforce/label/c.NZC_Renewable_Not_Applicable";
import NZC_Allocated_Renewable_Energy from "@salesforce/label/c.NZC_Allocated_Renewable_Energy";
import NZC_Renewable_Energy_Type from "@salesforce/label/c.NZC_Renewable_Energy_Type";
import NZC_Attach_Receipt_for_Renewable from "@salesforce/label/c.NZC_Attach_Receipt_for_Renewable";
import NZC_File_Error_Msg from "@salesforce/label/c.NZC_File_Error_Msg";
import NZC_Months_Picklist from "@salesforce/label/c.NZC_Months_Picklist";
import NZC_Month_Label from "@salesforce/label/c.NZC_Month_Label";
import NZC_Field_rangeOverFlowError from "@salesforce/label/c.NZC_Field_rangeOverFlowError";

export default class CreateEnergyUseRecordsChildOLD extends LightningElement {
  label = {
    NZC_Energy_Use_Name,
    NZC_Attach_Receipt,
    NZC_Fuel_Consumption,
    NZC_Consumption_Unit,
    NZC_Start_Date,
    NZC_End_Date,
    NZC_Comments,
    NZC_Refrigerant_Emissions_Type,
    NZC_Renewable_Not_Applicable,
    NZC_Allocated_Renewable_Energy,
    NZC_Renewable_Energy_Type,
    NZC_Attach_Receipt_for_Renewable,
    NZC_File_Error_Msg,
    NZC_Months_Picklist,
    NZC_Month_Label,
    NZC_Field_rangeOverFlowError
  };

  @api recordIdFromParent;
  @api declarationAccept;
  @api uniqueStamp;
  @api sendEnergyUseRecordIdToParent = "";
  @api showFileError = false;
  @api showRenFileError = false;
  @api fuelTypeDetails;
  quantity = 0;
  uomSelected = "";
  renTypeSelected = "";
  renEnergy = 0;
  fileUploadedName = "";
  documentIdOfUploadedFile = "";
  renFileUploadedName = "";
  renDocumentIdOfUploadedFile = "";
  @api disableRenewable = false;
  //fuelTypeIsRefrigerant = false;
  //fuelTypeIsElectricity = false;
  recordName;
  @api disableAll = false;
  disableRenewable = false;
  recordId = "";
  createdEnergyUseRecordId = "";
  startDateValue = "";
  endDateValue = "";
  commentValue = "";
  applicabilityValue = "Applicable";
  energyUse = {};
  retSelected = "";
  //recordIdForMappingRef = "";
  mapFromApex = "";
  renEnergyValueAllowed = "";
  refEmissionFactorIdFromApex = "";
  monthSelected = "";

  @api
  getShowRenewablePart() {
    return this.fuelTypeDetails.showNotApplicableForRenewable;
  }

  @api
  getcurrentFileUploadedName() {
    return this.fileUploadedName;
  }

  @api
  getcurrentRenFileUploadedName() {
    return this.renFileUploadedName;
  }

  @api
  getcurrentApplicabilityValue() {
    return this.applicabilityValue;
  }

  get enableRenewablePart() {
    if (this.fuelTypeDetails.showNotApplicableForRenewable == "true") {
      return true;
    } else if (this.fuelTypeDetails.showNotApplicableForRenewable == "false") {
      return false;
    }
  }
  get fuelTypeIsRefrigerant() {
    if (this.fuelTypeDetails.fuelType == "Refrigerant") {
      return true;
    } else {
      return false;
    }
  }
  get fuelTypeIsElectricity() {
    if (this.fuelTypeDetails.fuelType == "Electricity") {
      return true;
    } else {
      return false;
    }
  }
  get showSectionfinal() {
    if (this.fuelTypeDetails.isSectionOpen == "true") {
      return this.fuelTypeDetails.FuelTypeAccordionLabel;
    }
  }

  get applicabilityOptions() {
    var appList = this.fuelTypeDetails.ApplicabilityValues.split(",");
    var optList = [];
    appList.forEach((element) => {
      var app = { label: element, value: element };
      optList.push(app);
    });
    // console.log("app list", optList);
    return optList;
  }

  get uom_Options() {
    var uomList = this.fuelTypeDetails.uOMOptions.split(",");
    var optionsList = [];
    uomList.forEach((element) => {
      let picklistOptionSplit = element.split(":");
      var obj = {
        label: picklistOptionSplit[0],
        value: picklistOptionSplit[1]
      };
      optionsList.push(obj);
    });
    return optionsList;
  }

  get month_Options() {
    var monthList = NZC_Months_Picklist.split(",");
    var optionsList = [];
    monthList.forEach((element) => {
      let picklistOptionSplit = element.split(":");
      var obj = {
        label: picklistOptionSplit[0],
        value: picklistOptionSplit[1]
      };
      optionsList.push(obj);
    });
    return optionsList;
  }

  get ret_Options() {
    var retList = this.fuelTypeDetails.refrigerantEmissionsFactor.split(",");
    var optionsListRET = [];
    retList.forEach((element) => {
      var obj = { label: element, value: element };
      optionsListRET.push(obj);
    });
    return optionsListRET;
  }

  get ren_Energy_Type_Options() {
    var retoList = this.fuelTypeDetails.renewableEnergyType.split(",");
    var optionsList = [];
    retoList.forEach((element) => {
      let picklistOptionSplit = element.split(":");
      var obj = {
        label: picklistOptionSplit[0],
        value: picklistOptionSplit[1]
      };
      optionsList.push(obj);
    });
    return optionsList;
  }

  get disableForRenComponents() {
    if (this.disableAll == true) {
      return true; //disabled
    } else if (this.disableAll == false && this.disableRenewable == true) {
      return true;
    } else {
      return false;
    }
  }

  //onchange method for file upload
  handleTopFileUpload(event) {
    //console.log("fileupload detail", event.detail.files[0].name);
    this.fileUploadedName = event.detail.files[0].name;
    this.documentIdOfUploadedFile = event.detail.files[0].documentId;
    if (this.fileUploadedName != "") {
      this.showFileError = false;
    }
    // this.handleAnyValueChange();
  }

  //onchange method for renewable file upload
  handleRenewableFileUpload(event) {
    // console.log("fileupload detail ren", event.detail.files[0].name);
    this.renFileUploadedName = event.detail.files[0].name;
    this.renDocumentIdOfUploadedFile = event.detail.files[0].documentId;
    if (this.renFileUploadedName != "") {
      this.showRenFileError = false;
    }
    // this.handleAnyValueChange();
  }

  //onchange method for applicability input
  handleApplicabilityChange(evt) {
    this.applicabilityValue = evt.target.value;
    if (evt.target.value == "Applicable") {
      //console.log('it is applicable');
      this.disableAll = false;
      //console.log('it is applicable',this.disableAll);
    } else {
      this.disableAll = true;
      //console.log('it is not applicable',this.disableAll);
      this.fileUploadedName = "";
      this.renFileUploadedName = "";
      this.documentIdOfUploadedFile = "";
      this.renDocumentIdOfUploadedFile = "";
    }
  }

  //onchange method for checkbox to enable/disable renewable section
  handleRenewableCheckboxChange(evt) {
    //console.log("inside renewable checkbox", evt.target.checked);
    if (evt.target.checked == true) {
      this.disableRenewable = true;
    } else {
      this.disableRenewable = false;
    }
    // this.handleAnyValueChange();
  }

  //onchange method for fuel consumption input
  handleUOMChange(event) {
    //console.log("uom", event.detail.value);
    this.uomSelected = event.target.value;
    //console.log('came here 4');
    if ((this.fuelTypeIsElectricity == true) & (this.quantity != "")) {
      this.validateRenEnergy();
    }
  }

  validateRenEnergy() {
    let renEnergyElement = this.template.querySelector(".renEnergy");
    //console.log('renEnergyElement.value',renEnergyElement.value);
    if (this.uomSelected == "MWh") {
      this.renEnergyValueAllowed = (1000 * parseFloat(this.quantity));
    } else if (this.uomSelected == "kWh") {
      this.renEnergyValueAllowed = parseFloat(this.quantity);
    }
    if (renEnergyElement.value) {
      if (parseFloat(renEnergyElement.value) > parseFloat(this.renEnergyValueAllowed)) {
        renEnergyElement.setCustomValidity(this.label.NZC_Field_rangeOverFlowError);
      } else {
        renEnergyElement.setCustomValidity('');
      }
      renEnergyElement.reportValidity();
    }
  }

  handleMonthChange(event) {
    this.monthSelected = event.target.value;
  }

  //onchange method for renewable type input
  handleRenEnergyTypeChange(event) {
    // console.log("ren energy type", event.detail.value);
    this.renTypeSelected = event.target.value;
    // this.handleAnyValueChange();
  }

  //onchange method for renewable allocated energy input
  handleAllocatedEnergyChange(event) {
    // console.log("allocated energy", event.target.value);
    this.renEnergy = event.target.value;
    this.validateRenEnergy();
    // this.handleAnyValueChange();
  }

  //onchange method for fuel consumption input
  handleQuantityChange(event) {
    // console.log("quantity", event.target.value);
    this.quantity = event.target.value;
    //console.log('type of this.quantity ', typeof(this.quantity));
    if ((this.fuelTypeIsElectricity == true) & this.quantity != '' & this.uomSelected != '') {
      this.validateRenEnergy();
    }
  }

  //onchange method for start date input
  handleStartDateChange(event) {
    //console.log('start date',event.target.value);
    this.startDateValue = event.target.value;
    // console.log("start date value", this.startDateValue);
  }

  //onchange method for end date input
  handleEndDateChange(event) {
    //console.log('end date',event.target.value);
    this.endDateValue = event.target.value;
    // console.log("end date value", this.endDateValue);
  }

  //onchange method for comment input
  handleCommentChange(event) {
    //console.log('comment',event.target.value);
    this.commentValue = event.target.value;
    // console.log("comment value", this.commentValue);
  }

  //onchange method for name input
  handleNameChange(event) {
    this.recordName = event.target.value;
  }

  //checking if the inputs are valid
  @api
  isInputValid() {
    let isValid = true;
    if (this.applicabilityValue == "Applicable") {
      let inputFields = this.template.querySelectorAll(".validate");
      inputFields.forEach((inputField) => {
        if (!inputField.checkValidity()) {
          inputField.reportValidity();
          isValid = false;
        }
        this.energyUse[inputField.name] = inputField.value;
      });
    }
    return isValid;
  }

  //to send the created energy use record id to parent and sent it for approval
  @api
  getCreatedRecordId() {
    // if (
    //   this.createdEnergyUseRecordId != "" ||
    //   this.createdEnergyUseRecordId != null
    // ) {
    if (this.createdEnergyUseRecordId) {
      return this.createdEnergyUseRecordId;
    }
  }

  //create energy use records
  @api
  handleCreateEnergyUseRecords() {
    //console.log(this.uniqueStamp + "line 390 in child");
    if (this.applicabilityValue == "Applicable") {

      const fields = {};
      fields[NAME_FIELD.fieldApiName] = this.recordName;
      fields[FUELTYPE_FIELD.fieldApiName] = this.fuelTypeDetails.fuelType;
      fields[FUELCONSUMPTION_FIELD.fieldApiName] = this.quantity;
      fields[FUELCONSUMPTIONUNIT_FIELD.fieldApiName] = this.uomSelected;
      fields[STARTDATE_FIELD.fieldApiName] = this.startDateValue;
      fields[ENDDATE_FIELD.fieldApiName] = this.endDateValue;
      fields[COMMENTS_FIELD.fieldApiName] = this.commentValue;
      fields[ENVRSRCID_FIELD.fieldApiName] = this.recordIdFromParent;
      fields[MONTH_FIELD.fieldApiName] = this.monthSelected;
      fields[REVIEW_FIELD.fieldApiName] = true;
      fields[ALLOCATEDRENEWABLEENERGY_FIELD.fieldApiName] = this.renEnergy;
      fields[RENEWABLEENERGYTYPE_FIELD.fieldApiName] = this.renTypeSelected;
      fields[REFRIGERANTEMISSIONSFACTOR_FIELD.fieldApiName] = this.fuelTypeDetails.refrigerantEmissionsFactor;
      fields[DECLARATION.fieldApiName] = this.declarationAccept;
      fields[CREATEDBYAUTOMATION_FIELD.fieldApiName] = true;
      const recordInput = {
        apiName: STNRYASSETENRGYUSE_OBJECT.objectApiName,
        fields
      };
      createRecord(recordInput)
        .then((energyUseRec) => {
          this.createdEnergyUseRecordId = energyUseRec.id;
          //console.log("createdEnergyUseRecordId", this.createdEnergyUseRecordId);
          //event -> pass record id to parent
          this.dispatchEvent(new CustomEvent('recordcreate', {
            detail: this.createdEnergyUseRecordId
          }));
          const fields = {};
          fields[ENERGY_USE_ID.fieldApiName] = this.createdEnergyUseRecordId;
          fields[ENERGY_USE_COMMENTS.fieldApiName] = this.commentValue;
          fields[ENERGY_USE_UNIT.fieldApiName] = this.uomSelected;
          fields[ENERGY_USE_CONS.fieldApiName] = this.quantity;
          fields[ENERGY_USE_STARTDATE.fieldApiName] = this.startDateValue;
          fields[ENERGY_USE_ENDDATE.fieldApiName] = this.endDateValue;
          fields[ENERGY_USE_TYPE.fieldApiName] =
            this.fuelTypeDetails.FuelTypeAccordionLabel;
          fields[FUELVALUE_FIELD.fieldApiName] = this.fuelTypeDetails.fuelType;
          fields[ENERGY_USE_OPT.fieldApiName] = this.applicabilityValue;
          fields[ENERGY_USE_TIMESTAMP.fieldApiName] = this.uniqueStamp;
          fields[SITEINFO_FIELD.fieldApiName] = this.recordIdFromParent;
          fields[MONTHSELECTED_FIELD.fieldApiName] = this.monthSelected;
          fields[CREATEDBYAUTOMATIONLOG_FIELD.fieldApiName] = true;
          //console.log('Value line 310');
          const recordInput = { apiName: ENERGY_LOG.objectApiName, fields };
          createRecord(recordInput)
            .then((logrec) => {
              //console.log("Success in 286" + logrec.Id);
            })
            .catch((error) => {
              //console.log("error while creating log record", error);
              this.createErrorLogRecord(error.body.message);
            });
          linkFile({
            documentId: this.documentIdOfUploadedFile,
            energyUseRecordId: this.createdEnergyUseRecordId
          })
            .then((result) => {
              //console.log("result", result);
            })
            .catch((err) => {
              //console.log('error in linking file');
              this.createErrorLogRecord(err.body.message);
            })

          if (this.fuelTypeDetails.showNotApplicableForRenewable == "true") {
            //console.log("inside renewable file linking part");
            if (this.renDocumentIdOfUploadedFile != null ||
              this.renDocumentIdOfUploadedFile != '') {
              linkFile({
                documentId: this.renDocumentIdOfUploadedFile,
                energyUseRecordId: this.createdEnergyUseRecordId
              })
                .then((result) => {
                  //console.log("result", result);
                })
                .catch((err) => {
                  //console.log('error in linking renewable file');
                  this.createErrorLogRecord(err.body.message);
                })
            }

          }
        })
        .catch((error) => {
          //console.log("error while creating record", error);
          this.createErrorLogRecord(error.body.message);
        });
    } else {
      const fields = {};
      fields[ENERGY_USE_COMMENTS.fieldApiName] = this.commentValue;
      fields[ENERGY_USE_UNIT.fieldApiName] = this.uomSelected;
      fields[ENERGY_USE_CONS.fieldApiName] = this.quantity;
      fields[ENERGY_USE_STARTDATE.fieldApiName] = this.startDateValue;
      fields[ENERGY_USE_ENDDATE.fieldApiName] = this.endDateValue;
      fields[ENERGY_USE_TYPE.fieldApiName] =
        this.fuelTypeDetails.FuelTypeAccordionLabel;
      fields[FUELVALUE_FIELD.fieldApiName] = this.fuelTypeDetails.fuelType;
      fields[ENERGY_USE_OPT.fieldApiName] = this.applicabilityValue;
      fields[ENERGY_USE_TIMESTAMP.fieldApiName] = this.uniqueStamp;
      fields[SITEINFO_FIELD.fieldApiName] = this.recordIdFromParent;
      fields[MONTHSELECTED_FIELD.fieldApiName] = this.monthSelected;
      //console.log("Value line 310");
      const recordInput = { apiName: ENERGY_LOG.objectApiName, fields };
      createRecord(recordInput)
        .then((logrec) => {
          //console.log("Success in 345" + logrec.Id);
        })
        .catch((error) => {
          //console.log("error while creating log record", error);
          this.createErrorLogRecord(error.body.message);
        });
    }
  }

  @api
  createErrorLogRecord(msg) {
    const fields = {};
    fields[ERRORDETAILS_FIELD.fieldApiName] = msg;
    const recordInput = { apiName: ERRORLOG_OBJECT.objectApiName, fields };
    createRecord(recordInput)
      .then((errLogRec) => {
        //console.log('error log record created', errLogRec);
      })
      .catch((error) => {
        //console.log('error while creating error log record', error.body.message);
      });
  }
}